package boards_test

import (
	"context"
	stderrors "errors"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/aarondl/sqlboiler/v4/boil"
	"github.com/google/uuid"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/boards"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	domainBoards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	domainCircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	mock_boards "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/boards"
	mock_circles "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/circles"
	mock_services "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/services"
	"go.uber.org/mock/gomock"
)

type BoardApplicationServiceTestSuite struct {
	suite.Suite
	ctx      context.Context
	ownerId  shared.UserId
	memberId shared.UserId
	circleId uuid.UUID
	boardId  uuid.UUID
	circle   domainCircles.Circle
	board    domainBoards.Board
}

func TestBoardApplicationService(t *testing.T) {
	suite.Run(t, new(BoardApplicationServiceTestSuite))
}

func makeCircle(id uuid.UUID, ownerId shared.UserId) domainCircles.Circle {
	name, _ := domainCircles.NewCircleName("Test Circle")
	c, err := domainCircles.NewCircle(id, *name, "desc", ownerId, []shared.UserId{})
	if err != nil {
		panic(err)
	}
	return *c
}

func makeBoard(id uuid.UUID, circleId uuid.UUID, topic string) domainBoards.Board {
	b, err := domainBoards.NewBoard(id, circleId, topic, domainBoards.Open, []domainBoards.Post{})
	if err != nil {
		panic(err)
	}
	return *b
}

func (s *BoardApplicationServiceTestSuite) SetupSuite() {
	s.ownerId = shared.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.memberId = shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")
	s.circleId = uuid.New()
	s.boardId = uuid.New()
	s.circle = makeCircle(s.circleId, s.ownerId)
	s.board = makeBoard(s.boardId, s.circleId, "Initial Topic")
	s.ctx = context.WithValue(context.Background(), "user", &rbac.AuthUser{
		UID:  string(s.ownerId),
		Role: rbac.Premium,
	})
}

func (s *BoardApplicationServiceTestSuite) TearDownSuite() {}

func (s *BoardApplicationServiceTestSuite) TestCreate() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	boardRepo := mock_boards.NewMockIBoardRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	boardDomainSvc := mock_boards.NewMockIBoardDomainService(ctrl)
	boardCreationSvc := mock_services.NewMockIBoardCreationService(ctrl)
	appService := boards.NewBoardApplicationService(boardRepo, circleRepo, boardDomainSvc, boardCreationSvc)

	t.Run("Success/Board can be created", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		boardCreationSvc.EXPECT().CreateBoard(s.ctx, s.ownerId, s.circle, "New Topic", gomock.Any()).Return(&s.board, nil)
		boardRepo.EXPECT().Save(s.ctx, s.board, gomock.Any()).Return(nil)
		cmd := boards.BoardCreateCommand{
			CircleId: s.circleId.String(),
			Topic:    "New Topic",
		}
		data, err := appService.Create(s.ctx, cmd)
		require.NoError(t, err)
		require.Equal(t, s.boardId.String(), data.Id)
		require.Equal(t, s.circleId.String(), data.CircleUuid)
	})

	t.Run("Error/Circle not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		circleRepo.EXPECT().Find(s.ctx, notFoundId, gomock.Any()).Return(nil, stderrors.New("sql: no rows in result set"))
		cmd := boards.BoardCreateCommand{
			CircleId: notFoundId.String(),
			Topic:    "New Topic",
		}
		_, err := appService.Create(s.ctx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})
}

func (s *BoardApplicationServiceTestSuite) TestChangeTopic() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	boardRepo := mock_boards.NewMockIBoardRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	boardDomainSvc := mock_boards.NewMockIBoardDomainService(ctrl)
	boardCreationSvc := mock_services.NewMockIBoardCreationService(ctrl)
	appService := boards.NewBoardApplicationService(boardRepo, circleRepo, boardDomainSvc, boardCreationSvc)

	t.Run("Success/Owner can change topic", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		boardRepo.EXPECT().Find(s.ctx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		boardRepo.EXPECT().Save(s.ctx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := boards.BoardChangeTopicCommand{
			BoardId:  s.boardId.String(),
			CircleId: s.circleId.String(),
			NewTopic: "Updated Topic",
		}
		data, err := appService.ChangeTopic(s.ctx, cmd)
		require.NoError(t, err)
		require.Equal(t, "Updated Topic", data.Topic)
	})

	t.Run("Error/Board not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		boardRepo.EXPECT().Find(s.ctx, notFoundId, gomock.Any()).Return(nil, stderrors.New("sql: no rows in result set"))
		cmd := boards.BoardChangeTopicCommand{
			BoardId:  notFoundId.String(),
			CircleId: s.circleId.String(),
			NewTopic: "Updated Topic",
		}
		_, err := appService.ChangeTopic(s.ctx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})

	t.Run("Error/Non-owner cannot change topic", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		boardRepo.EXPECT().Find(nonOwnerCtx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := boards.BoardChangeTopicCommand{
			BoardId:  s.boardId.String(),
			CircleId: s.circleId.String(),
			NewTopic: "Updated Topic",
		}
		_, err := appService.ChangeTopic(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}

func (s *BoardApplicationServiceTestSuite) TestChangeStatus() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	boardRepo := mock_boards.NewMockIBoardRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	boardDomainSvc := mock_boards.NewMockIBoardDomainService(ctrl)
	boardCreationSvc := mock_services.NewMockIBoardCreationService(ctrl)
	appService := boards.NewBoardApplicationService(boardRepo, circleRepo, boardDomainSvc, boardCreationSvc)

	t.Run("Success/Owner can change status to Closed", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		boardRepo.EXPECT().Find(s.ctx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		boardRepo.EXPECT().Save(s.ctx, gomock.Any(), gomock.Any()).Return(nil)
		cmd := boards.BoardChangeStatusCommand{
			BoardId:   s.boardId.String(),
			CircleId:  s.circleId.String(),
			NewStatus: int(domainBoards.Closed),
		}
		data, err := appService.ChangeStatus(s.ctx, cmd)
		require.NoError(t, err)
		require.Equal(t, domainBoards.Closed.String(), data.Status)
	})

	t.Run("Error/Non-owner cannot change status", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		boardRepo.EXPECT().Find(nonOwnerCtx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := boards.BoardChangeStatusCommand{
			BoardId:   s.boardId.String(),
			CircleId:  s.circleId.String(),
			NewStatus: int(domainBoards.Closed),
		}
		_, err := appService.ChangeStatus(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})

	t.Run("Error/Invalid status value returns InvalidArgument", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		boardRepo.EXPECT().Find(s.ctx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := boards.BoardChangeStatusCommand{
			BoardId:   s.boardId.String(),
			CircleId:  s.circleId.String(),
			NewStatus: 99,
		}
		_, err := appService.ChangeStatus(s.ctx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.InvalidArgument, errors.Code(err))
	})
}

func (s *BoardApplicationServiceTestSuite) TestAddNewPost() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	boardRepo := mock_boards.NewMockIBoardRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	boardDomainSvc := mock_boards.NewMockIBoardDomainService(ctrl)
	boardCreationSvc := mock_services.NewMockIBoardCreationService(ctrl)
	appService := boards.NewBoardApplicationService(boardRepo, circleRepo, boardDomainSvc, boardCreationSvc)

	t.Run("Success/Post can be added to board", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		boardRepo.EXPECT().Find(s.ctx, s.boardId, gomock.Any()).Return(&s.board, nil)
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		boardDomainSvc.EXPECT().AddPost(s.ctx, &s.board, gomock.Any(), s.circle, gomock.Any()).Return(nil)
		boardRepo.EXPECT().Save(s.ctx, s.board, gomock.Any()).Return(nil)
		cmd := boards.BoardAddPostCommand{
			BoardId:  s.boardId.String(),
			CircleId: s.circleId.String(),
			Content:  "Hello, World!",
		}
		data, err := appService.AddNewPost(s.ctx, cmd)
		require.NoError(t, err)
		require.Equal(t, s.boardId.String(), data.Id)
	})

	t.Run("Error/Board not found returns NotFound", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectRollback()
		notFoundId := uuid.New()
		boardRepo.EXPECT().Find(s.ctx, notFoundId, gomock.Any()).Return(nil, stderrors.New("sql: no rows in result set"))
		cmd := boards.BoardAddPostCommand{
			BoardId:  notFoundId.String(),
			CircleId: s.circleId.String(),
			Content:  "Hello, World!",
		}
		_, err := appService.AddNewPost(s.ctx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})
}

func (s *BoardApplicationServiceTestSuite) TestDelete() {
	t := s.T()
	ctrl := gomock.NewController(t)
	defer ctrl.Finish()
	db, mock, err := sqlmock.New()
	require.NoError(t, err)
	boil.SetDB(db)
	defer db.Close()
	boardRepo := mock_boards.NewMockIBoardRepository(ctrl)
	circleRepo := mock_circles.NewMockICircleRepository(ctrl)
	boardDomainSvc := mock_boards.NewMockIBoardDomainService(ctrl)
	boardCreationSvc := mock_services.NewMockIBoardCreationService(ctrl)
	appService := boards.NewBoardApplicationService(boardRepo, circleRepo, boardDomainSvc, boardCreationSvc)

	t.Run("Success/Owner can delete board", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		circleRepo.EXPECT().Find(s.ctx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		boardRepo.EXPECT().Delete(s.ctx, s.boardId, gomock.Any()).Return(nil)
		cmd := boards.BoardDeleteCommand{
			BoardId:  s.boardId.String(),
			CircleId: s.circleId.String(),
		}
		err := appService.Delete(s.ctx, cmd)
		require.NoError(t, err)
	})

	t.Run("Error/Non-owner cannot delete board", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()
		nonOwnerCtx := context.WithValue(context.Background(), "user", &rbac.AuthUser{
			UID:  string(s.memberId),
			Role: rbac.Premium,
		})
		circleRepo.EXPECT().Find(nonOwnerCtx, s.circleId, gomock.Any()).Return(&s.circle, nil)
		cmd := boards.BoardDeleteCommand{
			BoardId:  s.boardId.String(),
			CircleId: s.circleId.String(),
		}
		err := appService.Delete(nonOwnerCtx, cmd)
		require.Error(t, err)
		require.Equal(t, codes.PermissionDenied, errors.Code(err))
	})
}
