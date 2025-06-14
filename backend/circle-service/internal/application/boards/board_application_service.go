package boards

import (
	"context"

	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
	domainBoards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	domainCircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/services"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
)

type IBoardApplicationService interface {
	Create(ctx context.Context, command BoardCreateCommand) (*BoardData, error)
	ChangeTopic(ctx context.Context, command BoardChangeTopicCommand) (*BoardData, error)
	ChangeStatus(ctx context.Context, command BoardChangeStatusCommand) (*BoardData, error)
	AddNewPost(ctx context.Context, command BoardAddPostCommand) (*BoardData, error)
	Delete(ctx context.Context, command BoardDeleteCommand) error
}

type boardApplicationService struct {
	boardRepository      domainBoards.IBoardRepository
	circleRepository     domainCircles.ICircleRepository
	boardDomainService   domainBoards.IBoardDomainService
	boardCreationService services.IBoardCreationService
}

func NewBoardApplicationService(
	boardRepository domainBoards.IBoardRepository,
	circleRepository domainCircles.ICircleRepository,
	boardDomainService domainBoards.IBoardDomainService,
	boardCreationService services.IBoardCreationService,
) IBoardApplicationService {
	return boardApplicationService{
		boardRepository:      boardRepository,
		circleRepository:     circleRepository,
		boardDomainService:   boardDomainService,
		boardCreationService: boardCreationService,
	}
}

func (s boardApplicationService) Create(ctx context.Context, command BoardCreateCommand) (*BoardData, error) {
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

	circle, err := s.circleRepository.Find(ctx, circleUuid, tx)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "サークルが見つかりません: %s", command.CircleId)
		}
		return nil, err
	}

	board, err := s.boardCreationService.CreateBoard(ctx, *userId, *circle, command.Topic, tx)
	if err != nil {
		return nil, err
	}

	if err = s.boardRepository.Save(ctx, *board, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板の保存に失敗しました: %v", err)
	}

	dataBuilder := &boardDataBuilder{}
	board.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s boardApplicationService) ChangeTopic(ctx context.Context, command BoardChangeTopicCommand) (*BoardData, error) {
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

	boardUuid, err := uuid.Parse(command.BoardId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効な掲示板IDです: %s", command.BoardId)
	}

	board, err := s.boardRepository.Find(ctx, boardUuid, tx)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "掲示板が見つかりません: %s", command.BoardId)
		}
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	circle, err := s.circleRepository.Find(ctx, circleUuid, tx)
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "サークル情報の取得に失敗しました")
	}

	if !circle.IsOwner(*userId) {
		return nil, errors.Errorf(codes.PermissionDenied, "掲示板のトピックを変更する権限がありません。")
	}

	board.ChangeTopic(command.NewTopic)

	if err = s.boardRepository.Save(ctx, *board, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板の更新に失敗しました: %v", err)
	}

	dataBuilder := &boardDataBuilder{}
	board.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s boardApplicationService) ChangeStatus(ctx context.Context, command BoardChangeStatusCommand) (*BoardData, error) {
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

	boardUuid, err := uuid.Parse(command.BoardId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効な掲示板IDです: %s", command.BoardId)
	}

	board, err := s.boardRepository.Find(ctx, boardUuid, tx)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "掲示板が見つかりません: %s", command.BoardId)
		}
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.circleRepository.Find(ctx, circleUuid, tx)
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "サークル情報の取得に失敗しました")
	}

	if !circle.IsOwner(*userId) {
		return nil, errors.Errorf(codes.PermissionDenied, "掲示板のステータスを変更する権限がありません。")
	}

	newStatus, err := domainBoards.NewStatus(uint8(command.NewStatus))
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なステータスです: %d", command.NewStatus)
	}

	board.ChangeStatus(*newStatus)

	if err = s.boardRepository.Save(ctx, *board, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板の更新に失敗しました: %v", err)
	}

	dataBuilder := &boardDataBuilder{}
	board.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s boardApplicationService) AddNewPost(ctx context.Context, command BoardAddPostCommand) (*BoardData, error) {
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

	boardUuid, err := uuid.Parse(command.BoardId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効な掲示板IDです: %s", command.BoardId)
	}

	board, err := s.boardRepository.Find(ctx, boardUuid, tx)
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "掲示板が見つかりません: %s", command.BoardId)
		}
		return nil, err
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.circleRepository.Find(ctx, circleUuid, tx)
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "サークル情報の取得に失敗しました")
	}

	postUuid, err := uuid.NewV7()
	if err != nil {
		return nil, errors.Errorf(codes.Internal, "投稿のUUID生成に失敗しました: %v", err)
	}

	post, err := domainBoards.NewPost(postUuid, *userId, command.Content)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "無効な投稿内容です: %v", err)
	}

	if err = s.boardDomainService.AddPost(ctx, board, *post, *circle, tx); err != nil {
		return nil, err
	}

	if err = s.boardRepository.Save(ctx, *board, tx); err != nil {
		return nil, errors.Errorf(codes.Internal, "掲示板の更新に失敗しました: %v", err)
	}

	dataBuilder := &boardDataBuilder{}
	board.Notify(dataBuilder)
	data := dataBuilder.Build()
	return &data, nil
}

func (s boardApplicationService) Delete(ctx context.Context, command BoardDeleteCommand) error {
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

	boardUuid, err := uuid.Parse(command.BoardId)
	if err != nil {
		return errors.Errorf(codes.InvalidArgument, "無効な掲示板IDです: %s", command.BoardId)
	}

	circleUuid, err := uuid.Parse(command.CircleId)
	if err != nil {
		return errors.Errorf(codes.InvalidArgument, "無効なサークルIDです: %s", command.CircleId)
	}
	circle, err := s.circleRepository.Find(ctx, circleUuid, tx)
	if err != nil {
		return errors.Errorf(codes.Internal, "サークル情報の取得に失敗しました")
	}

	if !circle.IsOwner(*userId) {
		return errors.Errorf(codes.PermissionDenied, "掲示板を削除する権限がありません。")
	}

	if err = s.boardRepository.Delete(ctx, boardUuid, tx); err != nil {
		return errors.Errorf(codes.Internal, "掲示板の削除に失敗しました: %v", err)
	}

	return nil
}
