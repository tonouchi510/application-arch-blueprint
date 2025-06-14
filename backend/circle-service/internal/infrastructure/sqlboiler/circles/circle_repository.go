package circles

import (
	"context"

	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type circleRepository struct{}

func NewCircleRepository() domainModel.ICircleRepository {
	return circleRepository{}
}

func (r circleRepository) Find(ctx context.Context, circleId uuid.UUID, executor db.DbExecutor) (*domainModel.Circle, error) {
	circleData, err := models.FindCircle(ctx, executor, circleId.String())
	if err != nil {
		return nil, err
	}

	membersData, err := models.CircleMembers(models.CircleMemberWhere.CircleUUID.EQ(circleData.UUID)).All(ctx, executor)
	if err != nil {
		return nil, err
	}

	circle, err := toModel(*circleData, membersData)
	if err != nil {
		return nil, err
	}
	return circle, nil
}

func (r circleRepository) FindByName(ctx context.Context, name domainModel.CircleName, executor db.DbExecutor) (*domainModel.Circle, error) {
	circleData, err := models.Circles(models.CircleWhere.Name.EQ(string(name))).One(ctx, executor)
	if err != nil {
		return nil, err
	}

	membersData, err := models.CircleMembers(models.CircleMemberWhere.CircleUUID.EQ(circleData.UUID)).All(ctx, executor)
	if err != nil {
		return nil, err
	}

	circle, err := toModel(*circleData, membersData)
	if err != nil {
		return nil, err
	}
	return circle, nil
}

func (r circleRepository) Save(ctx context.Context, circle domainModel.Circle, executor db.DbExecutor) error {
	circleDataModelBuilder := &circleDataModelBuilder{}
	circle.Notify(circleDataModelBuilder)
	circleData := circleDataModelBuilder.Build()

	err := circleData.Upsert(ctx, executor, true, []string{"uuid"}, boil.Infer(), boil.Infer())
	if err != nil {
		return err
	}
	return nil
}

func (r circleRepository) Delete(ctx context.Context, circle domainModel.Circle, executor db.DbExecutor) error {
	circleData, err := models.FindCircle(ctx, executor, circle.Id.String())
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return errors.Errorf(codes.NotFound, "circle not found: %s", circle.Id.String())
		}
		return err
	}

	_, err = models.CircleMembers(models.CircleMemberWhere.CircleUUID.EQ(circleData.UUID)).DeleteAll(ctx, executor)
	if err != nil {
		return err
	}

	_, err = circleData.Delete(ctx, executor)
	if err != nil {
		return err
	}

	return nil
}

func (r circleRepository) AddCircleMember(ctx context.Context, circle domainModel.Circle, userId shared.UserId, executor db.DbExecutor) error {
	member := models.CircleMember{
		CircleUUID: circle.Id.String(),
		UserID:     string(userId),
	}

	err := member.Insert(ctx, executor, boil.Infer())
	if err != nil {
		return err
	}

	return nil
}

func (r circleRepository) RemoveCircleMember(ctx context.Context, circle domainModel.Circle, userId shared.UserId, executor db.DbExecutor) error {
	_, err := models.CircleMembers(
		models.CircleMemberWhere.CircleUUID.EQ(circle.Id.String()),
		models.CircleMemberWhere.UserID.EQ(string(userId)),
	).DeleteAll(ctx, executor)
	if err != nil {
		return err
	}

	return nil
}

func toModel(circleData models.Circle, membersData models.CircleMemberSlice) (*domainModel.Circle, error) {
	id, err := uuid.Parse(circleData.UUID)
	if err != nil {
		return nil, err
	}

	name, err := domainModel.NewCircleName(circleData.Name)
	if err != nil {
		return nil, err
	}

	ownerId, err := shared.NewUserId(circleData.OwnerID)
	if err != nil {
		return nil, err
	}

	// メンバーIDのリストを作成
	memberIds := []shared.UserId{}
	for _, member := range membersData {
		memberId, err := shared.NewUserId(member.UserID)
		if err != nil {
			return nil, err
		}
		memberIds = append(memberIds, *memberId)
	}

	circle, err := domainModel.NewCircle(id, *name, circleData.Description, *ownerId, memberIds)
	if err != nil {
		return nil, err
	}

	return circle, nil
}
