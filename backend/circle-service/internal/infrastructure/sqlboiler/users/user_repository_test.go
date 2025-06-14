package users

import (
	"context"
	"database/sql"
	"testing"

	"github.com/ory/dockertest/v3"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	testtools "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/test-tools"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type UserRepositoryTestSuite struct {
	suite.Suite

	pool     *dockertest.Pool
	resource *dockertest.Resource
	db       *sql.DB
	tx       *sql.Tx

	ctx  context.Context
	repo domainModel.IUserRepository

	testExistUserId domainModel.UserId
	testNewUserId   domainModel.UserId

	testExistUser domainModel.User
	testNewUser   domainModel.User
}

func TestUserRepository(t *testing.T) {
	suite.Run(t, new(UserRepositoryTestSuite))
}

func createTestUser(id domainModel.UserId) domainModel.User {
	return *domainModel.NewUser(
		id, domainModel.UserName("test-user"), domainModel.Email("test@test.com"),
		false, nil, nil,
	)
}

func (s *UserRepositoryTestSuite) SetupSuite() {
	s.ctx = context.Background()
	dbContainer, err := testtools.NewDBContainer()
	if err != nil {
		panic(err)
	}
	s.pool = dbContainer.Pool
	s.resource = dbContainer.Resource
	s.db = dbContainer.DB
	s.tx, err = s.db.BeginTx(s.ctx, nil)
	if err != nil {
		panic(err)
	}

	// Since this is a test, generate it directly without using a constructor.
	s.testExistUserId = domainModel.UserId("stcVbjuBhUO3ZKueP9losRy0nKB2")
	s.testExistUser = createTestUser(s.testExistUserId)

	s.testNewUserId = domainModel.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.testNewUser = createTestUser(s.testNewUserId)

	s.repo = NewUserRepository()

	// Added test user data
	user := models.User{
		ID:            string(s.testExistUserId),
		Name:          "hoge",
		Email:         "hoge@hoge.com",
		EmailVerified: false,
	}
	if err := user.Insert(s.ctx, s.tx, boil.Infer()); err != nil {
		panic(err)
	}
}

func (s *UserRepositoryTestSuite) TearDownSuite() {
	if s.tx != nil {
		_ = s.tx.Rollback()
	}
	if s.db != nil {
		_ = s.db.Close()
	}
	if s.pool != nil && s.resource != nil {
		_ = s.pool.Purge(s.resource)
	}
}

func (s *UserRepositoryTestSuite) TestFind() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		user, err := s.repo.Find(s.ctx, s.testExistUserId, s.tx)
		require.NoError(t, err)
		require.Equal(t, s.testExistUserId, user.Id)
	})

	t.Run("Error/存在しないidを指定した場合", func(t *testing.T) {
		notExistId := domainModel.UserId("abcdefgBhUO3ZKueP9losRy00000")
		res, err := s.repo.Find(s.ctx, notExistId, s.tx)
		require.Nil(t, res)
		require.Error(t, err)
		c := errors.Code(err)
		require.Equal(t, codes.NotFound, c)
	})
}

func (s *UserRepositoryTestSuite) TestSave() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		err := s.repo.Save(s.ctx, s.testNewUser, s.tx)
		require.Nil(t, err)

		user, err := s.repo.Find(s.ctx, s.testNewUserId, s.tx)
		require.NoError(t, err)
		require.Equal(t, s.testNewUserId, user.Id)
	})
}

func (s *UserRepositoryTestSuite) TestXDelete() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		err := s.repo.Delete(s.ctx, s.testNewUserId, s.tx)
		require.NoError(t, err)

		user, err := s.repo.Find(s.ctx, s.testNewUserId, s.tx)
		require.Error(t, err)
		require.Equal(t, nil, user)
	})
}
