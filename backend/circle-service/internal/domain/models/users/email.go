package users

import (
	"net/mail"
	"strings"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type Email string

func NewEmail(value string) (*Email, error) {
	addr, err := mail.ParseAddress(value)
	if err != nil {
		return nil, errors.Errorf(codes.InvalidArgument, "メールアドレスの形式が正しくありません。")
	}
	email := Email(addr.Address)
	return &email, nil
}

func (e Email) Equals(other Email) bool {
	// Case-insensitive comparison
	if strings.EqualFold(string(e), string(other)) {
		return true
	}
	return false
}
