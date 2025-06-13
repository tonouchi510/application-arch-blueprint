package circles

import (
	"github.com/google/uuid"

	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
)

type CircleData struct {
	Id          string
	Name        string
	Description string
	OwnerId     string
}

type CircleDataBuilder struct {
	id          uuid.UUID
	name        domainModel.CircleName
	description string
	ownerId     shared.UserId
}

func (b *CircleDataBuilder) SetId(id uuid.UUID) {
	b.id = id
}

func (b *CircleDataBuilder) SetName(name domainModel.CircleName) {
	b.name = name
}

func (b *CircleDataBuilder) SetDescription(description string) {
	b.description = description
}

func (b *CircleDataBuilder) SetOwnerId(ownerId shared.UserId) {
	b.ownerId = ownerId
}

func (b CircleDataBuilder) Build() CircleData {
	data := CircleData{
		Id:          b.id.String(),
		Name:        string(b.name),
		Description: b.description,
		OwnerId:     string(b.ownerId),
	}
	return data
}
