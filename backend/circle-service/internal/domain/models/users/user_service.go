package users

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IUserService interface {
	Exists(ctx context.Context, user User, executor db.DbExecutor) (bool, error)
	ExistsByEmail(ctx context.Context, user User, executor db.DbExecutor) (bool, error)
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
		if errors.Code(err) == codes.NotFound {
			return false, nil
		}
		return false, err
	}
	return true, nil
}

// ExistsByEmail checks if a user with the given email exists in the system.
func (s userService) ExistsByEmail(ctx context.Context, user User, executor db.DbExecutor) (bool, error) {
	_, err := s.userRepository.FindByEmail(ctx, user.email, executor)
	if err != nil {
		if errors.Code(err) == codes.NotFound {
			return false, nil
		}
		return false, err
	}
	return true, nil
}
