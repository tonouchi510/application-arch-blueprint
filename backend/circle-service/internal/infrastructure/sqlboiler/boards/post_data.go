package boards

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
)

type postDataModelBuilder struct {
	id      uuid.UUID
	userId  shared.UserId
	content string
}

func NewPostDataModelBuilder() postDataModelBuilder {
	return postDataModelBuilder{}
}

func (b *postDataModelBuilder) SetPostId(id uuid.UUID) {
	b.id = id
}

func (b *postDataModelBuilder) SetPostUserId(userId shared.UserId) {
	b.userId = userId
}

func (b *postDataModelBuilder) SetPostContent(content string) {
	b.content = content
}

func (b postDataModelBuilder) Build(boardUuid uuid.UUID) models.Post {
	return models.Post{
		UUID:      b.id.String(),
		BoardUUID: boardUuid.String(),
		UserID:    string(b.userId),
		Content:   b.content,
	}
}
