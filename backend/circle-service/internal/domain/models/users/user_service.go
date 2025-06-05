package users

import (
	"context"

	"github.com/volatiletech/sqlboiler/v4/boil"
)

type UserService struct {
	userRepository IUserRepository
}

func NewUserService(userRepository IUserRepository) UserService {
	return UserService{userRepository: userRepository}
}

// Exists checks if a user with the given name exists in the system.
func (s UserService) Exists(ctx context.Context, user User, conn boil.ContextExecutor) (bool, error) {
	_, err := s.userRepository.FindByName(ctx, user.name, conn)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return false, nil
		} else {
			return false, err
		}
	}
	return true, nil
}
