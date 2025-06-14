package circles

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type ICircleRepository interface {
	Find(ctx context.Context, id uuid.UUID, executor db.DbExecutor) (*Circle, error)
	FindByName(ctx context.Context, name CircleName, executor db.DbExecutor) (*Circle, error)
	Save(ctx context.Context, circle Circle, executor db.DbExecutor) error
	Delete(ctx context.Context, circle Circle, executor db.DbExecutor) error
	AddCircleMember(ctx context.Context, circle Circle, userId shared.UserId, executor db.DbExecutor) error
	RemoveCircleMember(ctx context.Context, circle Circle, userId shared.UserId, executor db.DbExecutor) error
}
