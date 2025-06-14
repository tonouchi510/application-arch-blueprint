package users_test

import (
	"context"
	"testing"

	"github.com/DATA-DOG/go-sqlmock"
	"github.com/golang/mock/gomock"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/users"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	mock_users "github.com/tonouchi510/application-arch-blueprint/circle-service/test/mock/domain/models/users"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type UserApplicationServiceTestSuite struct {
	suite.Suite

	ctx  context.Context
	user domainModel.User
}

func createTestUser(id domainModel.UserId) domainModel.User {
	return *domainModel.NewUser(
		id, domainModel.UserName("test-user"), domainModel.Email("test@test.com"),
		true, nil, nil,
	)
}

func TestUserApplicationService(t *testing.T) {
	suite.Run(t, new(UserApplicationServiceTestSuite))
}

func (s *UserApplicationServiceTestSuite) SetupSuite() {
	s.ctx = context.Background()
	s.user = createTestUser(domainModel.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa"))
}

func (s *UserApplicationServiceTestSuite) TearDownSuite() {
}

func (s *UserApplicationServiceTestSuite) TestRegisterUserFromFirebaseAuth() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	db, mock, err := sqlmock.New()
	if err != nil {
		panic(err)
	}
	boil.SetDB(db)
	defer db.Close()

	repo := mock_users.NewMockIUserRepository(ctrl)
	service := mock_users.NewMockIUserService(ctrl)
	appService := users.NewUserApplicationService(repo, service)

	t.Run("Success", func(t *testing.T) {
		c := users.RegistorUserFromFirebaseAuthCommand{
			Uid:           "bbbbbbbbbbbbbbbbbbbbbbbbbbbb",
			Name:          "test-user",
			Email:         "test@test.com",
			EmailVerified: true,
			PhotoUrl:      nil,
			PhoneNumber:   nil,
		}

		service.EXPECT().Exists(s.ctx, gomock.Any(), gomock.Any()).Return(false, nil)
		repo.EXPECT().Save(s.ctx, gomock.Any(), gomock.Any()).Return(nil)
		mock.ExpectBegin()
		mock.ExpectCommit()

		data, err := appService.RegistorUserFromFirebaseAuth(s.ctx, c)
		require.NoError(t, err)
		require.Equal(t, c.Uid, data.Id)
		require.Equal(t, c.Name, data.Name)
		require.Equal(t, c.Email, data.Email)
		require.Equal(t, c.EmailVerified, data.EmailVerified)
		require.Equal(t, c.PhotoUrl, data.PhotoUrl)
		require.Equal(t, c.PhoneNumber, data.PhoneNumber)
	})
}

func (s *UserApplicationServiceTestSuite) TestUpdate() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	db, mock, err := sqlmock.New()
	if err != nil {
		panic(err)
	}
	boil.SetDB(db)
	defer db.Close()

	repo := mock_users.NewMockIUserRepository(ctrl)
	service := mock_users.NewMockIUserService(ctrl)
	appService := users.NewUserApplicationService(repo, service)

	t.Run("Success", func(t *testing.T) {
		repo.EXPECT().Find(s.ctx, s.user.Id, gomock.Any()).Return(&s.user, nil)
		repo.EXPECT().Save(s.ctx, gomock.Any(), gomock.Any()).Return(nil)
		mock.ExpectBegin()
		mock.ExpectCommit()

		newName := "new-name"
		c := users.UpdateUserAttributesCommand{
			Name: &newName,
		}
		data, err := appService.UpdateAttributes(s.ctx, c)
		require.NoError(t, err)
		require.Equal(t, newName, data.Name)
	})
}

func (s *UserApplicationServiceTestSuite) TestDelete() {
	t := s.T()

	ctrl := gomock.NewController(t)
	defer ctrl.Finish()

	db, mock, err := sqlmock.New()
	if err != nil {
		panic(err)
	}
	boil.SetDB(db)
	defer db.Close()

	repo := mock_users.NewMockIUserRepository(ctrl)
	service := mock_users.NewMockIUserService(ctrl)
	appService := users.NewUserApplicationService(repo, service)

	t.Run("Success", func(t *testing.T) {
		mock.ExpectBegin()
		mock.ExpectCommit()

		repo.EXPECT().Delete(s.ctx, s.user, gomock.Any()).Return(nil)

		c := users.DeleteUserCommand{Uid: string(s.user.Id)}
		err = appService.Delete(s.ctx, c)
		require.NoError(t, err)
	})
}
