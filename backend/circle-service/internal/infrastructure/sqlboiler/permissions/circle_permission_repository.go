package permissions

import (
	"context"

	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type circlePermissionRepository struct{}

func NewCirclePermissionRepository() domainModel.ICirclePermissionRepository {
	return circlePermissionRepository{}
}

func (r circlePermissionRepository) Find(ctx context.Context, circleId uuid.UUID, executor db.DbExecutor) (*domainModel.CirclePermission, error) {
	permissionData, err := models.CirclePermissions(
		models.CirclePermissionWhere.CircleUUID.EQ(circleId.String()),
	).One(ctx, executor)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "circle permission not found: %s", circleId.String())
		}
		return nil, err
	}
	permission := toModel(*permissionData)
	return permission, nil
}

func (r circlePermissionRepository) Save(ctx context.Context, permission domainModel.CirclePermission, executor db.DbExecutor) error {
	permissionData := &models.CirclePermission{
		CircleUUID:              permission.CircleId.String(),
		PermissionBoardCreation: permission.BoardCreation,
	}
	err := permissionData.Upsert(ctx, executor, true, []string{"circle_uuid"}, boil.Infer(), boil.Infer())
	return err
}

func toModel(from models.CirclePermission) *domainModel.CirclePermission {
	circleUuid, _ := uuid.Parse(from.CircleUUID)

	permission := domainModel.NewCirclePermission(
		circleUuid,
		from.PermissionBoardCreation,
	)
	return permission
}
