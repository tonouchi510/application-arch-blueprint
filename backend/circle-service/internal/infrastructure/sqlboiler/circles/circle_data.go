package circles

import (
	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
)

type circleDataModelBuilder struct {
	id          uuid.UUID
	name        domainModel.CircleName
	description string
	ownerId     shared.UserId
}

func (b *circleDataModelBuilder) SetId(id uuid.UUID) {
	b.id = id
}

func (b *circleDataModelBuilder) SetName(name domainModel.CircleName) {
	b.name = name
}

func (b *circleDataModelBuilder) SetDescription(description string) {
	b.description = description
}

func (b *circleDataModelBuilder) SetOwnerId(ownerId shared.UserId) {
	b.ownerId = ownerId
}

func (b circleDataModelBuilder) Build() models.Circle {
	circle := models.Circle{
		UUID:        b.id.String(),
		Name:        string(b.name),
		Description: b.description,
		OwnerID:     string(b.ownerId),
	}
	return circle
}
