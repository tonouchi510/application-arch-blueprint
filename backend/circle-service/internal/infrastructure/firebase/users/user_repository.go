package users

import (
	"context"

	"firebase.google.com/go/v4/auth"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type userRepository struct {
	client *auth.Client
}

func NewUserRepository(client *auth.Client) domainModel.IUserRepository {
	return &userRepository{client: client}
}

// Find retrieves a user from Firebase Auth by UID.
// The executor parameter is unused; it exists to satisfy the IUserRepository interface.
func (r *userRepository) Find(ctx context.Context, id domainModel.UserId, _ db.DbExecutor) (*domainModel.User, error) {
	record, err := r.client.GetUser(ctx, string(id))
	if err != nil {
		if auth.IsUserNotFound(err) {
			return nil, errors.Errorf(codes.NotFound, "user not found: %s", id)
		}
		return nil, err
	}
	return toModel(record)
}

// FindByEmail retrieves a user from Firebase Auth by email address.
// The executor parameter is unused; it exists to satisfy the IUserRepository interface.
func (r *userRepository) FindByEmail(ctx context.Context, email domainModel.Email, _ db.DbExecutor) (*domainModel.User, error) {
	record, err := r.client.GetUserByEmail(ctx, string(email))
	if err != nil {
		if auth.IsUserNotFound(err) {
			return nil, errors.Errorf(codes.NotFound, "user not found: %s", email)
		}
		return nil, err
	}
	return toModel(record)
}

// Save updates the user's profile in Firebase Auth.
// The executor parameter is unused; it exists to satisfy the IUserRepository interface.
func (r *userRepository) Save(ctx context.Context, user domainModel.User, _ db.DbExecutor) error {
	builder := &userUpdateBuilder{params: &auth.UserToUpdate{}}
	user.Notify(builder)
	_, err := r.client.UpdateUser(ctx, string(user.Id), builder.Build())
	return err
}

// Delete removes a user from Firebase Auth.
// The executor parameter is unused; it exists to satisfy the IUserRepository interface.
func (r *userRepository) Delete(ctx context.Context, userId domainModel.UserId, _ db.DbExecutor) error {
	if err := r.client.DeleteUser(ctx, string(userId)); err != nil {
		if auth.IsUserNotFound(err) {
			return errors.Errorf(codes.NotFound, "user not found: %s", userId)
		}
		return err
	}
	return nil
}

func toModel(record *auth.UserRecord) (*domainModel.User, error) {
	userId, err := domainModel.NewUserId(record.UID)
	if err != nil {
		return nil, err
	}
	userName, err := domainModel.NewUserName(record.DisplayName)
	if err != nil {
		return nil, err
	}
	email, err := domainModel.NewEmail(record.Email)
	if err != nil {
		return nil, err
	}
	var photoUrl *domainModel.PhotoUrl
	if record.PhotoURL != "" {
		photoUrl, err = domainModel.NewPhotoUrl(record.PhotoURL)
		if err != nil {
			return nil, err
		}
	}
	var phoneNumber *domainModel.PhoneNumber
	if record.PhoneNumber != "" {
		phoneNumber, err = domainModel.NewPhoneNumber(record.PhoneNumber)
		if err != nil {
			return nil, err
		}
	}
	user := domainModel.NewUser(*userId, *userName, *email, record.EmailVerified, photoUrl, phoneNumber)
	return user, nil
}
