package boards

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IBoardDomainService interface {
	AddPost(ctx context.Context, board *Board, post Post, circle circles.Circle, executor db.DbExecutor) error
}

type boardDomainService struct {
	repository IBoardRepository
}

func NewBoardDomainService(repository IBoardRepository) IBoardDomainService {
	return boardDomainService{
		repository: repository,
	}
}

func (s boardDomainService) AddPost(ctx context.Context, board *Board, post Post, circle circles.Circle, executor db.DbExecutor) error {
	if !circle.IsMember(post.userId) {
		return errors.Errorf(codes.PermissionDenied, "サークルメンバーのみが投稿できます。")
	}

	if board.IsPostLimitReached() {
		return errors.Errorf(codes.ResourceExhausted, "掲示板の投稿数が上限に達しています。")
	}

	if err := s.repository.AddPost(ctx, board.Id, post, executor); err != nil {
		return err
	}

	board.posts = append(board.posts, post)
	return nil
}
