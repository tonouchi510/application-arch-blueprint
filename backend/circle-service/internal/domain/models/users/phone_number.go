package users

import (
	"regexp"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type PhoneNumber string

func NewPhoneNumber(value string) (*PhoneNumber, error) {
	_, err := regexp.MatchString(`^\+[1-9]\d{1,14}$`, value)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "電話番号の形式が正しくありません。E.164形式に準拠してください。")
	}
	phoneNumber := PhoneNumber(value)
	return &phoneNumber, nil
}
