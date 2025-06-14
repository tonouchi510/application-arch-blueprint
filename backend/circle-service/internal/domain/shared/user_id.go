package shared

import (
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type UserId string // Firebase AuthenticationのUIDを使用

func NewUserId(value string) (*UserId, error) {
	if value == "" {
		return nil, errors.Errorf(codes.InvalidArgument, "UserIdが空です。")
	} else if len(value) != 28 {
		return nil, errors.Errorf(codes.InvalidArgument, "UserIdが不正です。")
	}
	id := UserId(value)
	return &id, nil
}
