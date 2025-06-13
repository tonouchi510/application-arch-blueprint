package permissions

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type ICirclePermissionRepository interface {
	Find(ctx context.Context, circleId uuid.UUID, executor db.DbExecutor) (*CirclePermission, error)
	Save(ctx context.Context, permission CirclePermission, executor db.DbExecutor) error
}
