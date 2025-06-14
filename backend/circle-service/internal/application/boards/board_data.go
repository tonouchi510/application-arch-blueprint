package boards

import (
	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
)

type BoardData struct {
	Id         string
	CircleUuid string
	Topic      string
	Status     string
}

type boardDataBuilder struct {
	id         uuid.UUID
	circleUuid uuid.UUID
	topic      string
	status     domainModel.Status
}

func (b *boardDataBuilder) SetId(id uuid.UUID) {
	b.id = id
}

func (b *boardDataBuilder) SetCircleUuid(circleUuid uuid.UUID) {
	b.circleUuid = circleUuid
}

func (b *boardDataBuilder) SetTopic(topic string) {
	b.topic = topic
}

func (b *boardDataBuilder) SetStatus(status domainModel.Status) {
	b.status = status
}

func (b boardDataBuilder) Build() BoardData {
	data := BoardData{
		Id:         b.id.String(),
		CircleUuid: b.circleUuid.String(),
		Topic:      b.topic,
		Status:     b.status.String(),
	}
	return data
}
