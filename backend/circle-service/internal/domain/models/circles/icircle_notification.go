package circles

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
)

type ICircleNotification interface {
	SetId(id uuid.UUID)
	SetName(name CircleName)
	SetDescription(description string)
	SetOwnerId(ownerId shared.UserId)
}
