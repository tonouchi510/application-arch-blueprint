package circles

import (
	"context"
	"slices"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type ICircleService interface {
	Exists(ctx context.Context, circle Circle, executor db.DbExecutor) (bool, error)
	AddNewCircleMember(ctx context.Context, circle *Circle, memberId shared.UserId, executor db.DbExecutor) error
	LeaveCircleMember(ctx context.Context, circle *Circle, memberId shared.UserId, executor db.DbExecutor) error
	DelegateOwner(ctx context.Context, circle *Circle, newOwnerId shared.UserId, executor db.DbExecutor) (*Circle, error)
}

type circleService struct {
	circleRepository ICircleRepository
}

func NewCircleService(circleRepository ICircleRepository) ICircleService {
	return circleService{circleRepository: circleRepository}
}

func (s circleService) Exists(ctx context.Context, circle Circle, executor db.DbExecutor) (bool, error) {
	duplicated, err := s.circleRepository.FindByName(ctx, circle.name, executor)
	if err != nil {
		return false, err
	}
	return duplicated != nil, nil
}

func (s circleService) AddNewCircleMember(ctx context.Context, circle *Circle, memberId shared.UserId, executor db.DbExecutor) error {
	if circle.IsFull() {
		return errors.Errorf(CircleMemberLimitError, "サークルのメンバー数が上限に達しています。")
	}
	err := s.circleRepository.AddCircleMember(ctx, *circle, memberId, executor)
	if err != nil {
		return errors.Errorf(codes.Internal, "サークルメンバーの追加に失敗しました: %v", err)
	}
	circle.memberIds = append(circle.memberIds, memberId)
	return nil
}

func (s circleService) LeaveCircleMember(ctx context.Context, circle *Circle, memberId shared.UserId, executor db.DbExecutor) error {
	err := s.circleRepository.RemoveCircleMember(ctx, *circle, memberId, executor)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return errors.Errorf(codes.NotFound, "指定されたサークルメンバーが見つかりません: %v", memberId)
		}
		return errors.Errorf(codes.Internal, "サークルメンバーの削除に失敗しました: %v", err)
	}
	idx := slices.Index(circle.memberIds, memberId)
	circle.memberIds = slices.Delete(circle.memberIds, idx, idx+1)
	return nil
}

func (s circleService) DelegateOwner(ctx context.Context, circle *Circle, newOwnerId shared.UserId, executor db.DbExecutor) (*Circle, error) {
	if newOwnerId == circle.ownerId {
		return nil, errors.Errorf(codes.InvalidArgument, "既にオーナーです。")
	}
	if !slices.Contains(circle.memberIds, newOwnerId) {
		return nil, errors.Errorf(codes.InvalidArgument, "新しいオーナーはメンバーから選ばなければなりません。")
	}

	// Replace owner and member
	currentOwnerId := circle.ownerId
	circle.ownerId = newOwnerId
	err := s.circleRepository.RemoveCircleMember(ctx, *circle, newOwnerId, executor)
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "メンバーの削除に失敗しました: %v", err)
	}
	if err := s.circleRepository.AddCircleMember(ctx, *circle, currentOwnerId, executor); err != nil {
		return nil, errors.Errorf(codes.Internal, "メンバーの追加に失敗しました: %v", err)
	}
	return circle, nil
}
