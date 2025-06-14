package users

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IUserRepository interface {
	Find(ctx context.Context, id UserId, executor db.DbExecutor) (*User, error)
	FindByName(ctx context.Context, name UserName, executor db.DbExecutor) (*User, error)
	Save(ctx context.Context, user User, executor db.DbExecutor) error
	Delete(ctx context.Context, userId UserId, executor db.DbExecutor) error
}
