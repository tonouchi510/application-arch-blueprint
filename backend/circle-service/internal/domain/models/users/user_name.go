package users

import (
	"unicode/utf8"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type UserName string

func NewUserName(value string) (*UserName, error) {
	length := utf8.RuneCountInString(value)
	if length < 3 {
		return nil, errors.Errorf(codes.InvalidArgument, "ユーザ名は3文字以上です。")
	} else if length > 20 {
		return nil, errors.Errorf(codes.InvalidArgument, "ユーザ名は20文字以下です。")
	}
	name := UserName(value)
	return &name, nil
}
