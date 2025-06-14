package services

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/permissions"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

//go:generate mockgen -source=$GOFILE -destination=../../../test/mock/domain/services/$GOFILE

type IBoardCreationService interface {
	CreateBoard(ctx context.Context, requesterId shared.UserId, circle circles.Circle, topic string, executor db.DbExecutor) (*boards.Board, error)
}

type boardCreationService struct {
	circlePermissionRepo permissions.ICirclePermissionRepository
}

func NewBoardCreationService(circlePermissionRepo permissions.ICirclePermissionRepository) boardCreationService {
	return boardCreationService{
		circlePermissionRepo: circlePermissionRepo,
	}
}

func (s boardCreationService) CreateBoard(
	ctx context.Context,
	requesterId shared.UserId,
	circle circles.Circle,
	topic string,
	executor db.DbExecutor,
) (*boards.Board, error) {
	if !circle.IsOwner(requesterId) {
		// if not circle owner,
		p, err := s.circlePermissionRepo.Find(ctx, circle.Id, executor)
		if err != nil {
			return nil, err
		}
		if !p.BoardCreation {
			return nil, errors.Errorf(codes.PermissionDenied, "ボードの作成権限がありません。")
		}
	}
	// 掲示板作成
	boardUuid, err := uuid.NewV7()
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板のUUID生成に失敗しました: %v", err)
	}
	status, err := boards.NewStatus(uint8(boards.Open))
	board, err := boards.NewBoard(boardUuid, circle.Id, topic, *status, []boards.Post{})
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板の作成に失敗しました: %v", err)
	}
	return board, nil
}
