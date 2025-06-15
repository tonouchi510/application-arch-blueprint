package users

import (
	"context"

	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type userRepository struct{}

func NewUserRepository() domainModel.IUserRepository {
	return userRepository{}
}

func (r userRepository) Find(ctx context.Context, id domainModel.UserId, executor db.DbExecutor) (*domainModel.User, error) {
	userData, err := models.FindUser(ctx, executor, string(id))
	if err != nil {
		// If the user does not exist, an error is returned.
		return nil, err
	}
	user, err := toModel(*userData)
	if err != nil {
		return nil, err
	}
	return user, nil
}

func (r userRepository) FindByName(ctx context.Context, name domainModel.UserName, executor db.DbExecutor) (*domainModel.User, error) {
	userData, err := models.Users(models.UserWhere.Name.EQ(string(name))).One(ctx, executor)
	if err != nil {
		return nil, err
	}
	user, err := toModel(*userData)
	if err != nil {
		return nil, err
	}
	return user, nil
}

func (r userRepository) Save(ctx context.Context, user domainModel.User, executor db.DbExecutor) error {
	userDataModelBuilder := &userDataModelBuilder{}
	user.Notify(userDataModelBuilder)
	userData := userDataModelBuilder.Build()

	err := userData.Upsert(ctx, executor, true, []string{"id"}, boil.Infer(), boil.Infer())
	return err
}

func (r userRepository) Delete(ctx context.Context, userId domainModel.UserId, executor db.DbExecutor) error {
	userData, err := models.FindUser(ctx, executor, string(userId))
	if err != nil {
		if err.Error() == "no rows in result set" {
			return errors.Errorf(codes.NotFound, "user not found: %s", userId)
		}
		return err
	}
	if _, err := userData.Delete(ctx, executor, false); err != nil {
		return err
	}
	return nil
}

func toModel(from models.User) (*domainModel.User, error) {
	userId, err := domainModel.NewUserId(from.ID)
	if err != nil {
		return nil, err
	}
	userName, err := domainModel.NewUserName(from.Name)
	if err != nil {
		return nil, err
	}
	email, err := domainModel.NewEmail(from.Email)
	if err != nil {
		return nil, err
	}
	var photoUrl *domainModel.PhotoUrl
	if from.PhotoURL.Valid {
		photoUrl, err = domainModel.NewPhotoUrl(from.PhotoURL.String)
		if err != nil {
			return nil, err
		}
	}
	var phoneNumber *domainModel.PhoneNumber
	if from.PhoneNumber.Valid {
		phoneNumber, err = domainModel.NewPhoneNumber(from.PhoneNumber.String)
		if err != nil {
			return nil, err
		}
	}
	user := domainModel.NewUser(*userId, *userName, *email, from.EmailVerified, photoUrl, phoneNumber)
	return user, nil
}
