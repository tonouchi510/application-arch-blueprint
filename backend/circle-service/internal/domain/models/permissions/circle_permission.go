package permissions

import "github.com/google/uuid"

// Manage member permissions
type CirclePermission struct {
	CircleId      uuid.UUID
	BoardCreation bool
}

func NewCirclePermission(circleId uuid.UUID, boardCreation bool) *CirclePermission {
	return &CirclePermission{
		CircleId:      circleId,
		BoardCreation: boardCreation,
	}
}

func NewDefaultCirclePermission(circleId uuid.UUID) *CirclePermission {
	return &CirclePermission{
		CircleId:      circleId,
		BoardCreation: false,
	}
}

func (p *CirclePermission) ChangeBoardCreationPermission(allowed bool) {
	p.BoardCreation = allowed
}
