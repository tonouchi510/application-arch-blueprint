package circles_test

import (
	"context"
	"testing"

	"github.com/golang/mock/gomock"
	"github.com/google/uuid"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	mock_circles "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/circles"
	mock_db "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/shared/db"
)

type CircleServiceTestSuite struct {
	suite.Suite

	ctx context.Context

	circle      circles.Circle
	circleId    uuid.UUID
	ownerId     shared.UserId
	circleName  circles.CircleName
	description string
	memberId    shared.UserId
}

func TestCircleService(t *testing.T) {
	suite.Run(t, new(CircleServiceTestSuite))
}

func (s *CircleServiceTestSuite) SetupSuite() {
	s.ctx = context.Background()
	s.circleId = uuid.New()
	s.ownerId = shared.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.circleName = circles.CircleName("Test Circle")
	s.description = "This is a test circle"
	s.memberId = shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")

	s.circle = createTestCircle(s.circleId, s.ownerId)
}

func (s *CircleServiceTestSuite) TearDownSuite() {}

func (s *CircleServiceTestSuite) TestExists() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockDb := mock_db.NewMockDbExecutor(ctrl)
	repo := mock_circles.NewMockICircleRepository(ctrl)
	domainService := circles.NewCircleService(repo)

	t.Run("Success/同じ名前のサークルが存在する場合、trueを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.circleName, gomock.Any()).Return(&s.circle, nil)
		exist, err := domainService.Exists(s.ctx, s.circle, mockDb)
		require.NoError(t, err)
		require.True(t, exist)
	})

	t.Run("Success/同じ名前のサークルが存在しない場合、falseを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.circleName, gomock.Any()).Return(nil, errors.Errorf(codes.NotFound, ""))
		exist, err := domainService.Exists(s.ctx, s.circle, mockDb)
		require.NoError(t, err)
		require.False(t, exist)
	})

	t.Run("Error/FindByNameでエラーが発生した場合、エラーを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.circleName, gomock.Any()).Return(nil, errors.Errorf(codes.Internal, ""))
		exist, err := domainService.Exists(s.ctx, s.circle, mockDb)
		require.Error(t, err)
		require.False(t, exist)
	})
}

func (s *CircleServiceTestSuite) TestAddNewCircleMember() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockDb := mock_db.NewMockDbExecutor(ctrl)
	repo := mock_circles.NewMockICircleRepository(ctrl)
	domainService := circles.NewCircleService(repo)

	t.Run("Success/メンバーが追加できる", func(t *testing.T) {
		// リポジトリのモック設定
		repo.EXPECT().AddCircleMember(s.ctx, s.circle, s.memberId, mockDb).Return(nil)

		// テスト対象メソッド実行
		err := domainService.AddNewCircleMember(s.ctx, &s.circle, s.memberId, mockDb)
		require.NoError(t, err)

		// TODO: メンバーが追加されていることを確認
	})

	t.Run("Error/サークルのメンバー数が上限に達している場合、エラーを返す", func(t *testing.T) {
		// メンバー数上限のサークルを作成
		memberIds := []shared.UserId{}
		for i := 0; i < 30; i++ {
			memberIds = append(memberIds, shared.UserId(uuid.New().String()))
		}
		fullCircle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)

		// テスト対象メソッド実行
		err = domainService.AddNewCircleMember(s.ctx, fullCircle, s.memberId, mockDb)
		require.Error(t, err)
		require.Equal(t, circles.CircleMemberLimitError, errors.Code(err))
	})

	t.Run("Error/リポジトリ処理でエラーが発生した場合、エラーを返す", func(t *testing.T) {
		// リポジトリのモック設定
		repo.EXPECT().AddCircleMember(s.ctx, s.circle, s.memberId, mockDb).
			Return(errors.Errorf(codes.Internal, "データベースエラー"))

		// テスト対象メソッド実行
		err := domainService.AddNewCircleMember(s.ctx, &s.circle, s.memberId, mockDb)
		require.Error(t, err)
		require.Equal(t, codes.Internal, errors.Code(err))
	})
}

func (s *CircleServiceTestSuite) TestLeaveCircleMember() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockDb := mock_db.NewMockDbExecutor(ctrl)
	repo := mock_circles.NewMockICircleRepository(ctrl)
	domainService := circles.NewCircleService(repo)

	t.Run("Success/メンバーが脱退できる", func(t *testing.T) {
		// メンバーを含むサークルを作成
		memberIds := []shared.UserId{s.memberId}
		circle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)

		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, circle, s.memberId, mockDb).Return(nil)

		// テスト対象メソッド実行
		err = domainService.LeaveCircleMember(s.ctx, circle, s.memberId, mockDb)
		require.NoError(t, err)

		// TODO: メンバーが削除されていることを確認
	})

	t.Run("Error/メンバーが存在しない場合、NotFoundエラーを返す", func(t *testing.T) {
		// 存在しないメンバーID
		nonExistMemberId := shared.UserId("cccccccccccccccccccccccccccc")

		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, s.circle, nonExistMemberId, mockDb).
			Return(errors.Errorf(codes.NotFound, "sql: no rows in result set"))

		// テスト対象メソッド実行
		err := domainService.LeaveCircleMember(s.ctx, &s.circle, nonExistMemberId, mockDb)
		require.Error(t, err)
		require.Equal(t, codes.NotFound, errors.Code(err))
	})

	t.Run("Error/リポジトリ処理でエラーが発生した場合、エラーを返す", func(t *testing.T) {
		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, s.circle, s.memberId, mockDb).
			Return(errors.Errorf(codes.Internal, "データベースエラー"))

		// テスト対象メソッド実行
		err := domainService.LeaveCircleMember(s.ctx, &s.circle, s.memberId, mockDb)
		require.Error(t, err)
		require.Equal(t, codes.Internal, errors.Code(err))
	})
}

func (s *CircleServiceTestSuite) TestDelegateOwner() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockDb := mock_db.NewMockDbExecutor(ctrl)
	repo := mock_circles.NewMockICircleRepository(ctrl)
	domainService := circles.NewCircleService(repo)

	t.Run("Success/オーナー権限を委譲できる", func(t *testing.T) {
		// メンバーを含むサークルを作成
		memberIds := []shared.UserId{s.memberId}
		circle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)

		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, gomock.Any(), s.memberId, mockDb).Return(nil)
		repo.EXPECT().AddCircleMember(s.ctx, gomock.Any(), s.ownerId, mockDb).Return(nil)

		// テスト対象メソッド実行
		res, err := domainService.DelegateOwner(s.ctx, circle, s.memberId, mockDb)
		require.NoError(t, err)

		note := &TestCircleNotification{}
		res.Notify(note)

		// オーナーが変更されていることを確認
		require.True(t, circle.IsOwner(s.memberId))
		require.Equal(t, s.memberId, note.ownerId)
	})

	t.Run("Error/既にオーナーの場合、エラーを返す", func(t *testing.T) {
		// テスト対象メソッド実行
		res, err := domainService.DelegateOwner(s.ctx, &s.circle, s.ownerId, mockDb)
		require.Error(t, err)
		require.Nil(t, res)
		require.Equal(t, codes.InvalidArgument, errors.Code(err))
	})

	t.Run("Error/メンバーでない場合、エラーを返す", func(t *testing.T) {
		// メンバーではないユーザーID
		nonMemberId := shared.UserId("cccccccccccccccccccccccccccc")

		// テスト対象メソッド実行
		res, err := domainService.DelegateOwner(s.ctx, &s.circle, nonMemberId, mockDb)
		require.Error(t, err)
		require.Nil(t, res)
		require.Equal(t, codes.InvalidArgument, errors.Code(err))
	})

	t.Run("Error/RemoveCircleMemberでエラーが発生した場合、エラーを返す", func(t *testing.T) {
		// メンバーを含むサークルを作成
		memberIds := []shared.UserId{s.ownerId, s.memberId}
		circle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)

		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, gomock.Any(), s.memberId, mockDb).
			Return(errors.Errorf(codes.Internal, "データベースエラー"))

		// テスト対象メソッド実行
		res, err := domainService.DelegateOwner(s.ctx, circle, s.memberId, mockDb)
		require.Error(t, err)
		require.Nil(t, res)
		require.Equal(t, codes.Internal, errors.Code(err))
	})

	t.Run("Error/AddCircleMemberでエラーが発生した場合、エラーを返す", func(t *testing.T) {
		// メンバーを含むサークルを作成
		memberIds := []shared.UserId{s.ownerId, s.memberId}
		circle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)

		// リポジトリのモック設定
		repo.EXPECT().RemoveCircleMember(s.ctx, gomock.Any(), s.memberId, mockDb).Return(nil)
		repo.EXPECT().AddCircleMember(s.ctx, gomock.Any(), s.ownerId, mockDb).
			Return(errors.Errorf(codes.Internal, "データベースエラー"))

		// テスト対象メソッド実行
		res, err := domainService.DelegateOwner(s.ctx, circle, s.memberId, mockDb)
		require.Error(t, err)
		require.Nil(t, res)
		require.Equal(t, codes.Internal, errors.Code(err))
	})
}
