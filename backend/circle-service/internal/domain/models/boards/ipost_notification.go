package boards

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
)

type IPostNotification interface {
	SetPostId(id uuid.UUID)
	SetPostUserId(userId shared.UserId)
	SetPostContent(content string)
}
