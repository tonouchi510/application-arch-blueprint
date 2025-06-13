package boards

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IBoardRepository interface {
	Find(ctx context.Context, boardUuid uuid.UUID, executor db.DbExecutor) (*Board, error)
	Save(ctx context.Context, board Board, executor db.DbExecutor) error
	AddPost(ctx context.Context, boardUuid uuid.UUID, post Post, executor db.DbExecutor) error
	Delete(ctx context.Context, boardUuid uuid.UUID, executor db.DbExecutor) error
}
