package boards

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
)

type Post struct {
	Id      uuid.UUID
	userId  shared.UserId
	content string
}

func NewPost(id uuid.UUID, userId shared.UserId, content string) (*Post, error) {
	return &Post{
		Id:      id,
		userId:  userId,
		content: content,
	}, nil
}

func (p Post) Notify(note IPostNotification) {
	note.SetPostId(p.Id)
	note.SetPostUserId(p.userId)
	note.SetPostContent(p.content)
}
