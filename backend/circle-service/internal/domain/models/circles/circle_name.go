package circles

import (
	"unicode/utf8"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type CircleName string

func NewCircleName(value string) (*CircleName, error) {
	if value == "" {
		return nil, errors.Errorf(codes.InvalidArgument, "CircleNameが空です。")
	}
	length := utf8.RuneCountInString(value)
	if length < 3 {
		return nil, errors.Errorf(codes.InvalidArgument, "CircleNameは3文字以上でなければなりません。")
	}
	if length > 20 {
		return nil, errors.Errorf(codes.InvalidArgument, "CircleNameは20文字以下でなければなりません。")
	}
	name := CircleName(value)
	return &name, nil
}

func (n CircleName) Equals(other CircleName) (bool, error) {
	return n == other, nil
}
