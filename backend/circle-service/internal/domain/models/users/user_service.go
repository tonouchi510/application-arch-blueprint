package users

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IUserService interface {
	Exists(ctx context.Context, user User, executor db.DbExecutor) (bool, error)
	ExistsByName(ctx context.Context, user User, executor db.DbExecutor) (bool, error)
}

type userService struct {
	userRepository IUserRepository
}

func NewUserService(userRepository IUserRepository) IUserService {
	return userService{userRepository: userRepository}
}

// Exists checks if a user exists in the system.
func (s userService) Exists(ctx context.Context, user User, executor db.DbExecutor) (bool, error) {
	_, err := s.userRepository.Find(ctx, user.Id, executor)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return false, nil
		} else {
			return false, err
		}
	}
	return true, nil
}

// Exists checks if a user with the given name exists in the system.
func (s userService) ExistsByName(ctx context.Context, user User, executor db.DbExecutor) (bool, error) {
	_, err := s.userRepository.FindByName(ctx, user.name, executor)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return false, nil
		} else {
			return false, err
		}
	}
	return true, nil
}
