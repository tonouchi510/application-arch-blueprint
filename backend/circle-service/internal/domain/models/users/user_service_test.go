package users_test

import (
	"context"
	"testing"

	"github.com/golang/mock/gomock"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	mock_users "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/users"
	mock_db "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/shared/db"
)

type UserServiceTestSuite struct {
	suite.Suite

	ctx context.Context

	user     users.User
	userName users.UserName
}

func TestUserService(t *testing.T) {
	suite.Run(t, new(UserServiceTestSuite))
}

func (s *UserServiceTestSuite) SetupSuite() {
	s.ctx = context.Background()
	s.userName = users.UserName("test")
	s.user = *users.NewUser(
		users.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
		s.userName, users.Email("test@test.com"), false, nil, nil,
	)
}

func (s *UserServiceTestSuite) TearDownSuite() {}

func (s *UserServiceTestSuite) TestExists() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	mockDb := mock_db.NewMockDbExecutor(ctrl)
	repo := mock_users.NewMockIUserRepository(ctrl)
	domainService := users.NewUserService(repo)

	t.Run("Success/同じ名前のユーザが存在する場合、trueを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.userName, gomock.Any()).Return(s.user, nil)
		exist, err := domainService.Exists(s.ctx, s.user, mockDb)
		require.NoError(t, err)
		require.True(t, exist)
	})

	t.Run("Success/同じ名前のユーザが存在しない場合、falseを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.userName, gomock.Any()).Return(nil, errors.Errorf(codes.NotFound, ""))
		exist, err := domainService.Exists(s.ctx, s.user, mockDb)
		require.NoError(t, err)
		require.False(t, exist)
	})

	t.Run("Error/FindByNameでエラーが発生した場合、エラーを返す", func(t *testing.T) {
		repo.EXPECT().FindByName(s.ctx, s.userName, gomock.Any()).Return(nil, errors.Errorf(codes.Internal, ""))
		exist, err := domainService.Exists(s.ctx, s.user, mockDb)
		require.Error(t, err)
		require.False(t, exist)
	})
}
