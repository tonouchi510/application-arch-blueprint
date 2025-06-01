package users

import (
	"regexp"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type PhotoUrl string

func NewPhotoUrl(value string) (PhotoUrl, error) {
	_, err := regexp.MatchString(`(https?)(:\/\/[-_.!~*\'()a-zA-Z0-9;\/?:\@&=+\$,%#]+)\.(jpg|jpeg|png)`, value)
	if err != nil {
		return "", errors.Errorf(codes.InvalidArgument, "無効なURLです。")
	}
	photoUrl := PhotoUrl(value)
	return photoUrl, nil
}
