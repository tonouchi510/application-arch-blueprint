package graph

import (
	"github.com/google/uuid"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/interface/graph/model"

	appboards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/boards"
	appcircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/circles"
	appusers "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/users"
)

func toUserModel(data appusers.UserData) *model.UserModel {
	return &model.UserModel{
		ID:            data.Id,
		Name:          data.Name,
		Email:         data.Email,
		EmailVerified: data.EmailVerified,
		PhoneNumber:   data.PhoneNumber,
		PhotoURL:      data.PhotoUrl,
	}
}

func toCircleModel(data appcircles.CircleData) (*model.CircleModel, error) {
	id, err := uuid.Parse(data.Id)
	if err != nil {
		return nil, err
	}
	return &model.CircleModel{
		ID:          id,
		Name:        data.Name,
		Description: data.Description,
		OwnerID:     data.OwnerId,
	}, nil
}

func toBoardModel(data appboards.BoardData) (*model.BoardModel, error) {
	id, err := uuid.Parse(data.Id)
	if err != nil {
		return nil, err
	}
	circleID, err := uuid.Parse(data.CircleUuid)
	if err != nil {
		return nil, err
	}
	return &model.BoardModel{
		ID:         id,
		CircleUUID: circleID,
		Topic:      data.Topic,
		Status:     data.Status,
	}, nil
}
