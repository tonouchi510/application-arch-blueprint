package boards

import (
	"github.com/google/uuid"
)

type Board struct {
	Id         uuid.UUID
	circleUuid uuid.UUID
	topic      string
	status     Status
	posts      []Post
}

func NewBoard(id uuid.UUID, circleUuid uuid.UUID, topic string, status Status, posts []Post) (*Board, error) {
	return &Board{
		Id:         id,
		circleUuid: circleUuid,
		topic:      topic,
		status:     status,
		posts:      posts,
	}, nil
}

func (b *Board) ChangeTopic(newTopic string) {
	b.topic = newTopic
}

func (b *Board) ChangeStatus(newStatus Status) {
	b.status = newStatus
}

func (b Board) IsPostLimitReached() bool {
	return len(b.posts) >= 100
}

func (b Board) Notify(note IBoardNotification) {
	note.SetId(b.Id)
	note.SetCircleUuid(b.circleUuid)
	note.SetTopic(b.topic)
	note.SetStatus(b.status)
}
