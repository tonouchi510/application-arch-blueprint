package users

import (
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/volatiletech/null/v8"
)

type UserDataModelBuilder struct {
	id            domainModel.UserId
	name          domainModel.UserName
	email         domainModel.Email
	emailVerified bool
	photoUrl      *domainModel.PhotoUrl
	phoneNumber   *domainModel.PhoneNumber
}

func (b *UserDataModelBuilder) SetId(id domainModel.UserId) {
	b.id = id
}

func (b *UserDataModelBuilder) SetName(name domainModel.UserName) {
	b.name = name
}

func (b *UserDataModelBuilder) SetEmail(email domainModel.Email) {
	b.email = email
}

func (b *UserDataModelBuilder) SetEmailVerified(emailVerified bool) {
	b.emailVerified = emailVerified
}

func (b *UserDataModelBuilder) SetPhotoUrl(photoUrl *domainModel.PhotoUrl) {
	b.photoUrl = photoUrl
}

func (b *UserDataModelBuilder) SetPhoneNumber(phoneNumber *domainModel.PhoneNumber) {
	b.phoneNumber = phoneNumber
}

func (b UserDataModelBuilder) Build() models.User {
	return models.User{
		ID:            string(b.id),
		Name:          string(b.name),
		Email:         string(b.email),
		EmailVerified: b.emailVerified,
		PhotoURL:      null.StringFromPtr((*string)(b.photoUrl)),
		PhoneNumber:   null.StringFromPtr((*string)(b.phoneNumber)),
	}
}
