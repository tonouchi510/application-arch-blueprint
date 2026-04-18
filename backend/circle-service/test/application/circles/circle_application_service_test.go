package circles_test

import (
	"context"
	stderrors "errors"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/aarondl/sqlboiler/v4/boil"
	"github.com/google/uuid"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	mock_circles "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/circles"
	mock_permissions "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/permissions"
	"go.uber.org/mock/gomock"
)

type CircleApplicationServiceTestSuite struct {
	suite.Suite
	premiumCtx  context.Context
	freemiumCtx context.Context
	ownerId     shared.UserId
	memberId    shared.UserId
	circleId    uuid.UUID
	circle      domainModel.Circle
}

func TestCircleApplicationService(t *testing.T) {
	suite.Run(t, new(CircleApplicationServiceTestSuite))
}

func makeTestCircle(id uuid.UUID, ownerId shared.UserId, memberIds []shared.UserId) domainModel.Circle {
	name, _ := domainModel.NewCircleName("Test Circle")
	c, err := domainModel.NewCircle(id, *name, "description", ownerId, memberIds)
	if err != nil {
		panic(err)
	}
	return *c
}

func (s *CircleApplicationServiceTestSuite) SetupSuite() {
	s.ownerId = shared.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.memberId = shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")
	s.circleId = uuid.New()
	s.circle = makeTestCircle(s.circleId, s.ownerId, []shared.UserId{})
	s.premiumCtx = context.WithValue(context.Background(), "user", &rbac.AuthUser{
		UID:  string(s.ownerId),
		Role: rbac.Premium,
	})
	s.freemiumCtx = context.WithValue(context.Background(), "user", &rbac.AuthUser{
		UID:  string(s.ownerId),
		Role: rbac.Freemium,
	})
}

func (s *CircleApplicationServiceTestSuite) TearDownSuite() {}

func (s *CircleApplicationServiceTestSuite) TestCreate() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Premium user can create circle", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		svc.EXPECT().Exists(s.premiumCtx, gomock.Any(), gomock.Any()).Return(false, nil)
		repo.EXPECT().Save(s.premiumCtx, gomock.Any(), gomock.Any()).Return(nil)
		permRepo.EXPECT().Save(s.premiumCtx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := circles.CircleCreateCommand{Name: "New Circle", Description: "desc"}
		data, err := appService.Create(s.premiumCtx, cmd)
		require.NoError(t, err)
		require.Equal(t, "New Circle", data.Name)
		require.Equal(t, "desc", data.Description)
		require.Equal(t, string(s.ownerId), data.OwnerId)
	})

	t.Run("Error/Freemium user cannot create circle", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		cmd := circles.CircleCreateCommand{Name: "New Circle", Description: "desc"}
		_, err := appService.Create(s.freemiumCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})

	t.Run("Error/Duplicate circle name returns AlreadyExists", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		svc.EXPECT().Exists(s.premiumCtx, gomock.Any(), gomock.Any()).Return(true, nil)
		cmd := circles.CircleCreateCommand{Name: "New Circle", Description: "desc"}
		_, err := appService.Create(s.premiumCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.AlreadyExists, errors.Code(err))
	})
}

func (s *CircleApplicationServiceTestSuite) TestAddMember() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Owner can add member", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		repo.EXPECT().Find(s.premiumCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		svc.EXPECT().AddNewCircleMember(s.premiumCtx, &s.circle, s.memberId, gomock.Any()).Return(nil)
		cmd := circles.CircleAddMemberCommand{
			CircleId:    s.circleId.String(),
			NewMemberId: string(s.memberId),
		}
		err := appService.AddMember(s.premiumCtx, cmd)
		require.NoError(t, err)
	})

	t.Run("Error/Circle not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		repo.EXPECT().Find(s.premiumCtx, notFoundId, gomock.Any()).Return(nil, stderrors.New("no rows in result set"))
		cmd := circles.CircleAddMemberCommand{
			CircleId:    notFoundId.String(),
			NewMemberId: string(s.memberId),
		}
		err := appService.AddMember(s.premiumCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})

	t.Run("Error/Non-owner cannot add member", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		repo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := circles.CircleAddMemberCommand{
			CircleId:    s.circleId.String(),
			NewMemberId: "cccccccccccccccccccccccccccc",
		}
		err := appService.AddMember(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}

func (s *CircleApplicationServiceTestSuite) TestChangeName() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Owner can change circle name", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		repo.EXPECT().Find(s.premiumCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		repo.EXPECT().Save(s.premiumCtx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := circles.CircleChangeNameCommand{
			CircleId: s.circleId.String(),
			NewName:  "Updated Name",
		}
		data, err := appService.ChangeName(s.premiumCtx, cmd)
		require.NoError(t, err)
		require.Equal(t, "Updated Name", data.Name)
	})

	t.Run("Error/Circle not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		repo.EXPECT().Find(s.premiumCtx, notFoundId, gomock.Any()).Return(nil, stderrors.New("no rows in result set"))
		cmd := circles.CircleChangeNameCommand{
			CircleId: notFoundId.String(),
			NewName:  "Updated Name",
		}
		_, err := appService.ChangeName(s.premiumCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})

	t.Run("Error/Non-owner cannot change circle name", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		repo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := circles.CircleChangeNameCommand{
			CircleId: s.circleId.String(),
			NewName:  "Updated Name",
		}
		_, err := appService.ChangeName(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}

func (s *CircleApplicationServiceTestSuite) TestChangeDescription() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Owner can change circle description", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		repo.EXPECT().Find(s.premiumCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		repo.EXPECT().Save(s.premiumCtx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := circles.CircleChangeDescriptionCommand{
			CircleId:       s.circleId.String(),
			NewDescription: "new description",
		}
		data, err := appService.ChangeDescription(s.premiumCtx, cmd)
		require.NoError(t, err)
		require.Equal(t, "new description", data.Description)
	})

	t.Run("Error/Non-owner cannot change circle description", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		repo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := circles.CircleChangeDescriptionCommand{
			CircleId:       s.circleId.String(),
			NewDescription: "new description",
		}
		_, err := appService.ChangeDescription(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}

func (s *CircleApplicationServiceTestSuite) TestDelegateOwner() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Owner can delegate ownership", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		updatedCircle := makeTestCircle(s.circleId, s.memberId, []shared.UserId{})
		repo.EXPECT().Find(s.premiumCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		svc.EXPECT().DelegateOwner(s.premiumCtx, &s.circle, s.memberId, gomock.Any()).Return(&updatedCircle, nil)
		repo.EXPECT().Save(s.premiumCtx, updatedCircle, gomock.Any()).Return(nil)
		cmd := circles.CircleDelegateOwnerCommand{
			CircleId:   s.circleId.String(),
			NewOwnerId: string(s.memberId),
		}
		data, err := appService.DelegateOwner(s.premiumCtx, cmd)
		require.NoError(t, err)
		require.Equal(t, string(s.memberId), data.OwnerId)
	})

	t.Run("Error/Non-owner cannot delegate ownership", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		repo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := circles.CircleDelegateOwnerCommand{
			CircleId:   s.circleId.String(),
			NewOwnerId: "cccccccccccccccccccccccccccc",
		}
		_, err := appService.DelegateOwner(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}

func (s *CircleApplicationServiceTestSuite) TestDelete() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	repo := mock_circles.NewMockICircleRepository(ctrl)
	svc := mock_circles.NewMockICircleService(ctrl)
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	appService := circles.NewCircleApplicationService(svc, repo, permRepo)

	t.Run("Success/Owner can delete circle", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		repo.EXPECT().Find(s.premiumCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		permRepo.EXPECT().Delete(s.premiumCtx, s.circleId, gomock.Any()).Return(nil)
		repo.EXPECT().Delete(s.premiumCtx, s.circle, gomock.Any()).Return(nil)
		cmd := circles.CircleDeleteCommand{CircleId: s.circleId.String()}
		err := appService.Delete(s.premiumCtx, cmd)
		require.NoError(t, err)
	})

	t.Run("Error/Circle not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		repo.EXPECT().Find(s.premiumCtx, notFoundId, gomock.Any()).Return(nil, stderrors.New("no rows in result set"))
		cmd := circles.CircleDeleteCommand{CircleId: notFoundId.String()}
		err := appService.Delete(s.premiumCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})

	t.Run("Error/Non-owner cannot delete circle", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		repo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := circles.CircleDeleteCommand{CircleId: s.circleId.String()}
		err := appService.Delete(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}
