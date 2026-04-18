package permissions_test

import (
	"context"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/aarondl/sqlboiler/v4/boil"
	"github.com/google/uuid"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	domainCircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	domainPermissions "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	mock_circles "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/circles"
	mock_permissions "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/permissions"
	"go.uber.org/mock/gomock"
)

type CirclePermissionApplicationServiceTestSuite struct {
	suite.Suite
	ownerCtx    context.Context
	nonOwnerCtx context.Context
	ownerId     shared.UserId
	memberId    shared.UserId
	circleId    uuid.UUID
	circle      domainCircles.Circle
}

func TestCirclePermissionApplicationService(t *testing.T) {
	suite.Run(t, new(CirclePermissionApplicationServiceTestSuite))
}

func newPermTestCircle(id uuid.UUID, ownerId shared.UserId) domainCircles.Circle {
	name, _ := domainCircles.NewCircleName("Perm Circle")
	c, err := domainCircles.NewCircle(id, *name, "desc", ownerId, []shared.UserId{})
	if err != nil {
		panic(err)
	}
	return *c
}

func (s *CirclePermissionApplicationServiceTestSuite) SetupSuite() {
	s.ownerId = shared.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.memberId = shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")
	s.circleId = uuid.New()
	s.circle = newPermTestCircle(s.circleId, s.ownerId)
	s.ownerCtx = context.WithValue(context.Background(), "user", &rbac.AuthUser{
		UID:  string(s.ownerId),
		Role: rbac.Premium,
	})
	s.nonOwnerCtx = context.WithValue(context.Background(), "user", &rbac.AuthUser{
		UID:  string(s.memberId),
		Role: rbac.Premium,
	})
}

func (s *CirclePermissionApplicationServiceTestSuite) TearDownSuite() {}

func (s *CirclePermissionApplicationServiceTestSuite) TestChangeBoardCreationPermission() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	permRepo := mock_permissions.NewMockICirclePermissionRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	appService := permissions.NewCirclePermissionApplicationService(permRepo, circleRepo)

	t.Run("Success/Owner can enable board creation permission", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		p := domainPermissions.NewDefaultCirclePermission(s.circleId)
		circleRepo.EXPECT().Find(s.ownerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		permRepo.EXPECT().Find(s.ownerCtx, s.circleId, gomock.Any()).Return(p, nil)
		permRepo.EXPECT().Save(s.ownerCtx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := permissions.ChangeBoardCreationPermissionCommand{
			CircleId: s.circleId.String(),
			Allowed:  true,
		}
		err := appService.ChangeBoardCreationPermission(s.ownerCtx, cmd)
		require.NoError(t, err)
	})

	t.Run("Success/Owner can disable board creation permission", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		p := domainPermissions.NewCirclePermission(s.circleId, true)
		circleRepo.EXPECT().Find(s.ownerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		permRepo.EXPECT().Find(s.ownerCtx, s.circleId, gomock.Any()).Return(p, nil)
		permRepo.EXPECT().Save(s.ownerCtx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := permissions.ChangeBoardCreationPermissionCommand{
			CircleId: s.circleId.String(),
			Allowed:  false,
		}
		err := appService.ChangeBoardCreationPermission(s.ownerCtx, cmd)
		require.NoError(t, err)
	})

	t.Run("Error/Non-owner cannot change permission", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		circleRepo.EXPECT().Find(s.nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := permissions.ChangeBoardCreationPermissionCommand{
			CircleId: s.circleId.String(),
			Allowed:  true,
		}
		err := appService.ChangeBoardCreationPermission(s.nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}
