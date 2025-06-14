package circles

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type ICircleApplicationService interface {
	Create(ctx context.Context, command CircleCreateCommand) (*CircleData, error)
	AddMember(ctx context.Context, command CircleAddMemberCommand) error
	ChangeName(ctx context.Context, command CircleChangeNameCommand) (*CircleData, error)
	ChangeDescription(ctx context.Context, command CircleChangeDescriptionCommand) (*CircleData, error)
	DelegateOwner(ctx context.Context, command CircleDelegateOwnerCommand) (*CircleData, error)
	Delete(ctx context.Context, command CircleDeleteCommand) error
}

type circleApplicationService struct {
	ctx            context.Context
	domainService  domainModel.ICircleService
	repository     domainModel.ICircleRepository
	permissionRepo permissions.ICirclePermissionRepository
}

func NewCircleApplicationService(
	ctx context.Context,
	service domainModel.ICircleService,
	repository domainModel.ICircleRepository,
	permissionRepo permissions.ICirclePermissionRepository,
) ICircleApplicationService {
	return circleApplicationService{
		ctx:            ctx,
		domainService:  service,
		repository:     repository,
		permissionRepo: permissionRepo,
	}
}

func (s circleApplicationService) Create(ctx context.Context, command CircleCreateCommand) (*CircleData, error) {
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
	ac := rbac.RBAC[authUser.Role]
	if !ac.CreateCirclePermission {
		return nil, errors.Errorf(codes.PermissionDenied, "サークルを作成する権限がありません。")
	}

	userId, err := shared.NewUserId(authUser.UID)
	if err != nil {
		return nil, err
	}
	circleId, err := uuid.NewV7()
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "サークルIDの生成に失敗しました。")
	}
	name, err := domainModel.NewCircleName(command.Name)
	if err != nil {
		return nil, err
	}

	circle, err := domainModel.NewCircle(circleId, *name, command.Description, *userId, []shared.UserId{})
	if err != nil {
		return nil, err
	}
	exist, err := s.domainService.Exists(ctx, *circle, tx)
	if err != nil {
		return nil, err
	}
	if exist {
		return nil, errors.Errorf(codes.AlreadyExists, "サークル名='%s'はすでに存在しています。", command.Name)
	}

	if err = s.repository.Save(ctx, *circle, tx); err != nil {
		return nil, err
	}

	p := permissions.NewDefaultCirclePermission(circleId)
	if err = s.permissionRepo.Save(ctx, *p, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "サークルの権限設定の保存に失敗しました: %v", err)
	}

	dataBuilder := &CircleDataBuilder{}
	circle.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s circleApplicationService) AddMember(ctx context.Context, command CircleAddMemberCommand) error {
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

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.repository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "no rows in result set" {
			return errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return err
	}

	if !circle.IsOwner(*userId) {
		return errors.Errorf(codes.PermissionDenied, "サークルのオーナーのみがメンバーを追加できます。")
	}

	memberId, err := shared.NewUserId(command.NewMemberId)
	if err != nil {
		return err
	}

	if err = s.domainService.AddNewCircleMember(ctx, circle, *memberId, tx); err != nil {
		return err
	}

	return nil
}

func (s circleApplicationService) ChangeName(ctx context.Context, command CircleChangeNameCommand) (*CircleData, error) {
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
	userId, err := shared.NewUserId(authUser.UID)
	if err != nil {
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.repository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return nil, err
	}

	if !circle.IsOwner(*userId) {
		return nil, errors.Errorf(codes.PermissionDenied, "サークルのオーナーのみがサークル名を変更できます。")
	}

	name, err := domainModel.NewCircleName(command.NewName)
	if err != nil {
		return nil, err
	}
	circle.ChangeName(*name)

	if err = s.repository.Save(ctx, *circle, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "サークル名の更新に失敗しました: %v", err)
	}

	dataBuilder := &CircleDataBuilder{}
	circle.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s circleApplicationService) ChangeDescription(ctx context.Context, command CircleChangeDescriptionCommand) (*CircleData, error) {
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
	userId, err := shared.NewUserId(authUser.UID)
	if err != nil {
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.repository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return nil, err
	}

	if !circle.IsOwner(*userId) {
		return nil, errors.Errorf(codes.PermissionDenied, "サークルのオーナーのみがサークルの説明を変更できます。")
	}
	circle.ChangeDescription(command.NewDescription)

	if err = s.repository.Save(ctx, *circle, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "サークルの説明の更新に失敗しました: %v", err)
	}

	dataBuilder := &CircleDataBuilder{}
	circle.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s circleApplicationService) DelegateOwner(ctx context.Context, command CircleDelegateOwnerCommand) (*CircleData, error) {
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
	userId, err := shared.NewUserId(authUser.UID)
	if err != nil {
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.repository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return nil, err
	}

	if !circle.IsOwner(*userId) {
		return nil, errors.Errorf(codes.PermissionDenied, "サークルのオーナーのみがオーナーを委譲できます。")
	}

	newOwnerId, err := shared.NewUserId(command.NewOwnerId)
	if err != nil {
		return nil, err
	}

	updatedCircle, err := s.domainService.DelegateOwner(ctx, circle, *newOwnerId, tx)
	if err != nil {
		return nil, err
	}

	if err = s.repository.Save(ctx, *updatedCircle, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "サークルの更新に失敗しました: %v", err)
	}

	dataBuilder := &CircleDataBuilder{}
	updatedCircle.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s circleApplicationService) Delete(ctx context.Context, command CircleDeleteCommand) error {
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

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.repository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "no rows in result set" {
			return errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return err
	}

	if !circle.IsOwner(*userId) {
		return errors.Errorf(codes.PermissionDenied, "サークルのオーナーのみがサークルを削除できます。")
	}

	if err = s.permissionRepo.Delete(ctx, circleUuid, tx); err != nil {
		return errors.Errorf(codes.Internal, "サークルの権限設定の削除に失敗しました: %v", err)
	}

	if err = s.repository.Delete(ctx, *circle, tx); err != nil {
		return errors.Errorf(codes.Internal, "サークルの削除に失敗しました: %v", err)
	}

	return nil
}
