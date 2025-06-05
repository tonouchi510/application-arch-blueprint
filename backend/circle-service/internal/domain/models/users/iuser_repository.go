package users

import (
	"context"

	"github.com/volatiletech/sqlboiler/v4/boil"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IUserRepository interface {
	Find(ctx context.Context, id UserId, tx boil.ContextExecutor) (*User, error)
	FindByName(ctx context.Context, name UserName, tx boil.ContextExecutor) (*User, error)
	Save(ctx context.Context, user User, tx boil.ContextExecutor) error
	Delete(ctx context.Context, user User, tx boil.ContextExecutor) error
}
