package boards

import (
	"context"

	"github.com/google/uuid"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
	"github.com/volatiletech/sqlboiler/v4/boil"
	"github.com/volatiletech/sqlboiler/v4/queries/qm"
)

type boardRepository struct{}

func NewBoardRepository() domainModel.IBoardRepository {
	return boardRepository{}
}

func (r boardRepository) Find(ctx context.Context, boardUuid uuid.UUID, executor db.DbExecutor) (*domainModel.Board, error) {
	boardData, err := models.FindBoard(ctx, executor, boardUuid.String())
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return nil, errors.Errorf(codes.NotFound, "board not found: %s", boardUuid.String())
		}
		return nil, err
	}
	posts, err := models.Posts(qm.Where("board_uuid = ?", boardUuid.String())).All(ctx, executor)
	if err != nil && err.Error() != "sql: no rows in result set" {
		return nil, errors.Errorf(codes.Internal, "failed to fetch posts for board %s: %v", boardUuid.String(), err)
	}
	board, err := toModel(*boardData, posts)
	if err != nil {
		return nil, err
	}
	return board, nil
}

func (r boardRepository) Save(ctx context.Context, board domainModel.Board, executor db.DbExecutor) error {
	boardDataModelBuilder := &boardDataModelBuilder{}
	board.Notify(boardDataModelBuilder)
	boardData := boardDataModelBuilder.Build()

	err := boardData.Upsert(ctx, executor, true, []string{"uuid"}, boil.Infer(), boil.Infer())
	return err
}

func (r boardRepository) AddPost(ctx context.Context, boardUuid uuid.UUID, post domainModel.Post, executor db.DbExecutor) error {
	postDataModelBuilder := &postDataModelBuilder{}
	post.Notify(postDataModelBuilder)
	postData := postDataModelBuilder.Build(boardUuid)

	if err := postData.Insert(ctx, executor, boil.Infer()); err != nil {
		return errors.Errorf(codes.Internal, "failed to add post to board %s: %v", boardUuid.String(), err)
	}
	return nil
}

func (r boardRepository) Delete(ctx context.Context, boardUuid uuid.UUID, executor db.DbExecutor) error {
	posts, err := models.Posts(qm.Where("board_uuid = ?", boardUuid.String())).All(ctx, executor)
	if err != nil && err.Error() != "sql: no rows in result set" {
		return errors.Errorf(codes.Internal, "failed to fetch posts for board %s: %v", boardUuid.String(), err)
	}
	for _, post := range posts {
		if _, err := post.Delete(ctx, executor); err != nil {
			return errors.Errorf(codes.Internal, "failed to delete post %s from board %s: %v", post.UUID, boardUuid.String(), err)
		}
	}

	boardData, err := models.FindBoard(ctx, executor, boardUuid.String())
	if err != nil {
		if err.Error() == "sql: no rows in result set" {
			return errors.Errorf(codes.NotFound, "board not found: %s", boardUuid.String())
		}
		return err
	}
	if _, err := boardData.Delete(ctx, executor); err != nil {
		return err
	}
	return nil
}

func toModel(boardData models.Board, postsData models.PostSlice) (*domainModel.Board, error) {
	id, err := uuid.Parse(boardData.UUID)
	if err != nil {
		return nil, err
	}
	circleUuid, err := uuid.Parse(boardData.CircleUUID)
	if err != nil {
		return nil, err
	}

	status, err := domainModel.NewStatus(uint8(boardData.Status))
	if err != nil {
		return nil, err
	}

	posts := make([]domainModel.Post, len(postsData))
	for i, d := range postsData {
		postId, err := uuid.Parse(d.UUID)
		if err != nil {
			return nil, errors.Errorf(codes.InvalidArgument, "invalid post UUID: %s", d.UUID)
		}
		userId, err := shared.NewUserId(d.UserID)
		if err != nil {
			return nil, err
		}
		post, err := domainModel.NewPost(postId, *userId, d.Content)
		if err != nil {
			return nil, err
		}
		posts[i] = *post
	}

	board, err := domainModel.NewBoard(id, circleUuid, boardData.Topic, *status, posts)
	if err != nil {
		return nil, err
	}
	return board, nil
}
