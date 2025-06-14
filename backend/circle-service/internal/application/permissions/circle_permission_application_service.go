package permissions

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type ICirclePermissionApplicationService interface {
	ChangeBoardCreationPermission(ctx context.Context, command ChangeBoardCreationPermissionCommand) error
}

type CirclePermissionApplicationService struct {
	repository       domainModel.ICirclePermissionRepository
	circleRepository circles.ICircleRepository
}

func NewCirclePermissionApplicationService(repository domainModel.ICirclePermissionRepository, circleRepository circles.ICircleRepository) *CirclePermissionApplicationService {
	return &CirclePermissionApplicationService{
		repository:       repository,
		circleRepository: circleRepository,
	}
}

func (s CirclePermissionApplicationService) ChangeBoardCreationPermission(ctx context.Context, command ChangeBoardCreationPermissionCommand) error {
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
	userId, err := shared.NewUserId(authUser.UID)
	if err != nil {
		return err
	}

	circleUUID, err := uuid.Parse(command.CircleId)
	if err != nil {
		return err
	}

	circle, err := s.circleRepository.Find(ctx, circleUUID, tx)
	if err != nil {
		return err
	}
	if !circle.IsOwner(*userId) {
		return errors.Errorf(codes.PermissionDenied, "設定変更はサークルのオーナーのみが行えます。")
	}

	permission, err := s.repository.Find(ctx, circleUUID, tx)
	if err != nil {
		return err
	}
	permission.ChangeBoardCreationPermission(command.Allowed)

	if err = s.repository.Save(ctx, *permission, tx); err != nil {
		return errors.Errorf(codes.Internal, "権限の保存に失敗しました: %v", err)
	}
	return nil
}
