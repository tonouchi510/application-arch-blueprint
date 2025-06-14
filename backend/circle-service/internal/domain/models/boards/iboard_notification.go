package boards

import "github.com/google/uuid"

type IBoardNotification interface {
	SetId(id uuid.UUID)
	SetCircleUuid(circleUuid uuid.UUID)
	SetTopic(topic string)
	SetStatus(status Status)
}
