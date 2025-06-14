package users

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type IUserApplicationService interface {
	RegistorUserFromFirebaseAuth(ctx context.Context, command RegistorUserFromFirebaseAuthCommand) (*UserData, error)
	UpdateAttributes(ctx context.Context, command UpdateUserAttributesCommand) (*UserData, error)
	Delete(ctx context.Context, command DeleteUserCommand) error
}

// 実装側はprivateに
type userApplicationService struct {
	repo          users.IUserRepository
	domainService users.IUserService
}

func NewUserApplicationService(repo users.IUserRepository, service users.IUserService) IUserApplicationService {
	return userApplicationService{
		repo:          repo,
		domainService: service,
	}
}

func (s userApplicationService) RegistorUserFromFirebaseAuth(ctx context.Context, command RegistorUserFromFirebaseAuthCommand) (*UserData, error) {
	tx, err := boil.BeginTx(ctx, nil)
	if err != nil {
		return nil, errors.Errorf(codes.Database, err.Error())
	}
	defer func() {
		if err != nil {
			tx.Rollback()
		} else {
			err = tx.Commit()
		}
	}()

	uid, err := users.NewUserId(command.Uid)
	if err != nil {
		return nil, err
	}
	userName, err := users.NewUserName(command.Name)
	if err != nil {
		return nil, err
	}
	email, err := users.NewEmail(command.Email)
	if err != nil {
		return nil, err
	}
	var photoUrl *users.PhotoUrl
	if command.PhotoUrl != nil {
		photoUrl, err = users.NewPhotoUrl(*command.PhotoUrl)
		if err != nil {
			return nil, err
		}
	}
	var phoneNumber *users.PhoneNumber
	if command.PhoneNumber != nil {
		phoneNumber, err = users.NewPhoneNumber(*command.PhoneNumber)
		if err != nil {
			return nil, err
		}
	}
	user := users.NewUser(
		*uid,
		*userName,
		*email,
		command.EmailVerified,
		photoUrl,
		phoneNumber,
	)
	if err != nil {
		return nil, err
	}
	exist, err := s.domainService.Exists(ctx, *user, tx)
	if err != nil {
		return nil, err
	}
	if exist {
		return nil, errors.Errorf(codes.AlreadyExists, "ユーザ'%s'はすでに存在しています。", command.Uid)
	}
	err = s.repo.Save(ctx, *user, tx)
	if err != nil {
		return nil, err
	}
	userDataBuilder := &UserDataBuilder{}
	user.Notify(userDataBuilder)
	userData := userDataBuilder.Build()
	return &userData, nil
}

func (s userApplicationService) UpdateAttributes(ctx context.Context, command UpdateUserAttributesCommand) (*UserData, error) {
	tx, err := boil.BeginTx(ctx, nil)
	if err != nil {
		return nil, errors.Errorf(codes.Database, err.Error())
	}
	defer func() {
		if err != nil {
			tx.Rollback()
		} else {
			err = tx.Commit()
		}
	}()

	authUser := rbac.ForContext(ctx)
	userId, err := users.NewUserId(authUser.UID)
	if err != nil {
		return nil, err
	}

	user, err := s.repo.Find(ctx, *userId, tx)
	if err != nil {
		return nil, err
	}
	if command.Name != nil {
		newUserName, err := users.NewUserName(*command.Name)
		if err != nil {
			return nil, err
		}
		user.ChangeName(*newUserName)
		exist, err := s.domainService.ExistsByName(ctx, *user, tx)
		if err != nil {
			return nil, err
		}
		if exist {
			return nil, errors.Errorf(codes.AlreadyExists, "ユーザ名='%s'はすでに存在しています。", *command.Name)
		}
	}
	if command.Email != nil {
		newEmail, err := users.NewEmail(*command.Email)
		if err != nil {
			return nil, err
		}
		user.ChangeEmail(*newEmail)
	}
	if command.PhotoUrl != nil {
		newPhotoUrl, err := users.NewPhotoUrl(*command.PhotoUrl)
		if err != nil {
			return nil, err
		}
		user.ChangePhotoUrl(newPhotoUrl)
	}
	if command.PhoneNumber != nil {
		newPhoneNumber, err := users.NewPhoneNumber(*command.PhoneNumber)
		if err != nil {
			return nil, err
		}
		user.ChangePhoneNumber(newPhoneNumber)
	}

	if err := s.repo.Save(ctx, *user, tx); err != nil {
		return nil, errors.Errorf(codes.Database, "ユーザ情報の更新に失敗しました: %s", err.Error())
	}
	userDataBuilder := &UserDataBuilder{}
	user.Notify(userDataBuilder)
	userData := userDataBuilder.Build()
	return &userData, nil
}

func (s userApplicationService) Delete(ctx context.Context, command DeleteUserCommand) error {
	tx, err := boil.BeginTx(ctx, nil)
	if err != nil {
		return errors.Errorf(codes.Database, err.Error())
	}
	defer func() {
		if err != nil {
			tx.Rollback()
		} else {
			err = tx.Commit()
		}
	}()

	authUser := rbac.ForContext(ctx)
	if authUser.UID != command.Uid {
		return errors.Errorf(codes.PermissionDenied, "他のユーザの削除は許可されていません。")
	}

	userId, err := users.NewUserId(authUser.UID)
	if err != nil {
		return err
	}
	if err := s.repo.Delete(ctx, *userId, tx); err != nil {
		return errors.Errorf(codes.Database, "ユーザの削除に失敗しました: %s", err.Error())
	}
	return nil
}
