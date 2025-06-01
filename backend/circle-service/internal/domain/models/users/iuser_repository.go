package users

import "context"

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IUserRepository interface {
	Find(ctx context.Context, id UserId) (*User, error)
	FindByName(ctx context.Context, name UserName) (*User, error)
	Save(ctx context.Context, user User) error
	Delete(ctx context.Context, user User) error
}
