package circles_test

import (
	"testing"

	"github.com/google/uuid"
	"github.com/stretchr/testify/require"
	"github.com/stretchr/testify/suite"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
)

type CircleTestSuite struct {
	suite.Suite

	circle      circles.Circle
	circleId    uuid.UUID
	ownerId     shared.UserId
	circleName  circles.CircleName
	description string
	memberIds   []shared.UserId
}

func createTestCircle(id uuid.UUID, ownerId shared.UserId) circles.Circle {
	circle, err := circles.NewCircle(
		id,
		circles.CircleName("Test Circle"),
		"This is a test circle",
		ownerId,
		[]shared.UserId{},
	)
	if err != nil {
		panic(err)
	}
	return *circle
}

func TestCircle(t *testing.T) {
	suite.Run(t, new(CircleTestSuite))
}

func (s *CircleTestSuite) SetupSuite() {
	s.circleId = uuid.New()
	s.ownerId = shared.UserId("aaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	s.circleName = circles.CircleName("Test Circle")
	s.description = "This is a test circle"
	s.memberIds = []shared.UserId{s.ownerId}

	s.circle = createTestCircle(s.circleId, s.ownerId)
}

func (s *CircleTestSuite) TearDownSuite() {}

func (s *CircleTestSuite) TestChangeName() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		newName := circles.CircleName("New Circle Name")
		s.circle.ChangeName(newName)

		note := &TestCircleNotification{}
		s.circle.Notify(note)
		require.Equal(t, newName, note.name)
	})
}

func (s *CircleTestSuite) TestChangeDescription() {
	t := s.T()
	t.Run("Success", func(t *testing.T) {
		newDescription := "This is a new description"
		s.circle.ChangeDescription(newDescription)

		note := &TestCircleNotification{}
		s.circle.Notify(note)
		require.Equal(t, newDescription, note.description)
	})
}

func (s *CircleTestSuite) TestIsFull() {
	t := s.T()

	t.Run("Success/メンバー数が上限未満の場合、falseを返す", func(t *testing.T) {
		result := s.circle.IsFull()
		require.False(t, result)
	})

	t.Run("Success/メンバー数が上限の場合、trueを返す", func(t *testing.T) {
		// メンバーを30人に設定する
		memberIds := []shared.UserId{}
		for i := 0; i < 30; i++ {
			memberIds = append(memberIds, shared.UserId(uuid.New().String()))
		}

		// 新しいサークルの作成
		fullCircle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)

		result := fullCircle.IsFull()
		require.True(t, result)
	})
}

func (s *CircleTestSuite) TestIsOwner() {
	t := s.T()

	t.Run("Success/オーナーIDが一致する場合、trueを返す", func(t *testing.T) {
		result := s.circle.IsOwner(s.ownerId)
		require.True(t, result)
	})

	t.Run("Success/メンバーIDが一致する場合、trueを返す", func(t *testing.T) {
		testMemberId := shared.UserId("cccccccccccccccccccccccccccc")
		memberIds := []shared.UserId{testMemberId}
		testCircle, err := circles.NewCircle(
			s.circleId,
			s.circleName,
			s.description,
			s.ownerId,
			memberIds,
		)
		require.NoError(t, err)
		result := testCircle.IsMember(testMemberId)
		require.True(t, result)
	})

	t.Run("Success/オーナーIDが一致しない場合、falseを返す", func(t *testing.T) {
		otherUserId := shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")
		result := s.circle.IsOwner(otherUserId)
		require.False(t, result)
	})
}

func (s *CircleTestSuite) TestIsMember() {
	t := s.T()

	t.Run("Success/Ownerの場合、trueを返す", func(t *testing.T) {
		result := s.circle.IsMember(s.ownerId)
		require.True(t, result)
	})

	t.Run("Success/オーナーでもメンバーでもない場合、falseを返す", func(t *testing.T) {
		otherUserId := shared.UserId("bbbbbbbbbbbbbbbbbbbbbbbbbbbb")
		result := s.circle.IsMember(otherUserId)
		require.False(t, result)
	})
}

type TestCircleNotification struct {
	id          uuid.UUID
	ownerId     shared.UserId
	name        circles.CircleName
	description string
}

func (n *TestCircleNotification) SetId(id uuid.UUID) {
	n.id = id
}

func (n *TestCircleNotification) SetOwnerId(ownerId shared.UserId) {
	n.ownerId = ownerId
}

func (n *TestCircleNotification) SetName(name circles.CircleName) {
	n.name = name
}

func (n *TestCircleNotification) SetDescription(description string) {
	n.description = description
}
