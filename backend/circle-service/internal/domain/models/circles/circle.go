package circles

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/shared"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

const CircleMemberLimitError codes.Code = "circle_member_limit"

type Circle struct {
	Id          uuid.UUID
	ownerId     shared.UserId
	name        CircleName
	description string
	memberIds   []shared.UserId
}

func NewCircle(id uuid.UUID, name CircleName, description string, ownerId shared.UserId, memberIds []shared.UserId) (*Circle, error) {
	if (len(memberIds) + 1) > 30 {
		return nil, errors.Errorf(CircleMemberLimitError, "サークルメンバー数は30人以下でなければなりません。")
	}
	circle := Circle{
		Id:          id,
		name:        name,
		description: description,
		ownerId:     ownerId,
		memberIds:   memberIds,
	}
	return &circle, nil
}

func (c *Circle) ChangeName(name CircleName) {
	c.name = name
}

func (c *Circle) ChangeDescription(description string) {
	c.description = description
}

// IsFull checks if the circle has reached its maximum member limit.
func (c Circle) IsFull() bool {
	return c.CountMembers() >= 30
}

// CountMembers returns the total number of members in the circle, including the owner.
func (c Circle) CountMembers() int {
	return len(c.memberIds) + 1
}

func (c Circle) IsOwner(userId shared.UserId) bool {
	return c.ownerId == userId
}

func (c Circle) Notify(note ICircleNotification) {
	note.SetId(c.Id)
	note.SetName(c.name)
	note.SetDescription(c.description)
	note.SetOwnerId(c.ownerId)
}
