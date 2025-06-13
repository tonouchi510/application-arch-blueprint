package boards

import (
	"context"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/db"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

//go:generate mockgen -source=$GOFILE -destination=../../../../test/mock/domain/models/$GOPACKAGE/$GOFILE

type IBoardDomainService interface {
	AddPost(ctx context.Context, board *Board, post Post, executor db.DbExecutor) error
}

type boardDomainService struct {
	repository IBoardRepository
}

func NewBoardDomainService(repository IBoardRepository) IBoardDomainService {
	return boardDomainService{
		repository: repository,
	}
}

func (s boardDomainService) AddPost(ctx context.Context, board *Board, post Post, executor db.DbExecutor) error {
	if len(board.posts) >= 100 {
		return errors.Errorf(codes.ResourceExhausted, "Board has reached the maximum number of posts.")
	}
	if err := s.repository.AddPost(ctx, board.Id, post, executor); err != nil {
		return err
	}
	board.posts = append(board.posts, post)
	return nil
}
