package users_test

import (
	"testing"

	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
)

type UserTestSuite struct {
	suite.Suite

	user   users.User
	userId users.UserId
}

func createTestUser(id users.UserId) users.User {
	return *users.NewUser(
		id, users.UserName("test-user"), users.Email("test@test.com"), false, nil, nil,
	)
}

func TestUser(t *testing.T) {
	suite.Run(t, new(UserTestSuite))
}

func (s *UserTestSuite) SetupSuite() {
	s.userId = users.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.user = createTestUser(s.userId)
}

func (s *UserTestSuite) TearDownSuite() {
}

func (s *UserTestSuite) TestChangeName() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		newName := users.UserName("new-name")
		err := s.user.ChangeName(newName)
		require.NoError(t, err)

		note := &TestUserNotification{}
		s.user.Notify(note)
		require.Equal(t, newName, note.name)
	})
}

func (s *UserTestSuite) TestChangeEmail() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		newEmail := users.Email("new-email@test.com")
		s.user.ChangeEmail(newEmail)

		note := &TestUserNotification{}
		s.user.Notify(note)
		require.Equal(t, newEmail, note.email)
		require.Equal(t, false, note.emailVerified)
	})
}

func (s *UserTestSuite) TestEqual() {
	t := s.T()
	t.Run("Success/識別子が同じユーザ同士を比較したらtrueになる", func(t *testing.T) {
		sameIdUser := createTestUser(s.userId)
		result := s.user.Equals(sameIdUser)
		require.True(t, result)
	})

	t.Run("Success/識別子が違うユーザ同士を比較したらfalseになる", func(t *testing.T) {
		otherIdUser := createTestUser(users.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbb"))
		result := s.user.Equals(otherIdUser)
		require.False(t, result)
	})
}

type TestUserNotification struct {
	id            users.UserId
	name          users.UserName
	email         users.Email
	emailVerified bool
	photoUrl      *users.PhotoUrl
	phoneNumber   *users.PhoneNumber
}

func (n *TestUserNotification) SetId(id users.UserId) {
	n.id = id
}

func (n *TestUserNotification) SetName(name users.UserName) {
	n.name = name
}

func (n *TestUserNotification) SetEmail(email users.Email) {
	n.email = email
}

func (n *TestUserNotification) SetEmailVerified(emailVerified bool) {
	n.emailVerified = emailVerified
}

func (n *TestUserNotification) SetPhotoUrl(photoUrl *users.PhotoUrl) {
	n.photoUrl = photoUrl
}

func (n *TestUserNotification) SetPhoneNumber(phoneNumber *users.PhoneNumber) {
	n.phoneNumber = phoneNumber
}
