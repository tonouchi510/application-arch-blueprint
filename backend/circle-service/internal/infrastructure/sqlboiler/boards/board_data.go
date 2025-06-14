package boards

import (
	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
)

type boardDataModelBuilder struct {
	id         uuid.UUID
	circleUuid uuid.UUID
	topic      string
	status     domainModel.Status
}

func (b *boardDataModelBuilder) SetId(id uuid.UUID) {
	b.id = id
}

func (b *boardDataModelBuilder) SetCircleUuid(circleUuid uuid.UUID) {
	b.circleUuid = circleUuid
}

func (b *boardDataModelBuilder) SetTopic(topic string) {
	b.topic = topic
}

func (b *boardDataModelBuilder) SetStatus(status domainModel.Status) {
	b.status = status
}

func (b boardDataModelBuilder) Build() models.Board {
	return models.Board{
		UUID:       b.id.String(),
		CircleUUID: b.circleUuid.String(),
		Topic:      b.topic,
		Status:     int16(b.status),
	}
}
