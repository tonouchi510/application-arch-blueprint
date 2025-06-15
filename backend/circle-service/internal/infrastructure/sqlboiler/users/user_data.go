package users

import (
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/models"
	"github.com/volatiletech/null/v8"
)

type userDataModelBuilder struct {
	id            domainModel.UserId
	name          domainModel.UserName
	email         domainModel.Email
	emailVerified bool
	photoUrl      *domainModel.PhotoUrl
	phoneNumber   *domainModel.PhoneNumber
}

func (b *userDataModelBuilder) SetId(id domainModel.UserId) {
	b.id = id
}

func (b *userDataModelBuilder) SetName(name domainModel.UserName) {
	b.name = name
}

func (b *userDataModelBuilder) SetEmail(email domainModel.Email) {
	b.email = email
}

func (b *userDataModelBuilder) SetEmailVerified(emailVerified bool) {
	b.emailVerified = emailVerified
}

func (b *userDataModelBuilder) SetPhotoUrl(photoUrl *domainModel.PhotoUrl) {
	b.photoUrl = photoUrl
}

func (b *userDataModelBuilder) SetPhoneNumber(phoneNumber *domainModel.PhoneNumber) {
	b.phoneNumber = phoneNumber
}

func (b userDataModelBuilder) Build() models.User {
	return models.User{
		ID:            string(b.id),
		Name:          string(b.name),
		Email:         string(b.email),
		EmailVerified: b.emailVerified,
		PhotoURL:      null.StringFromPtr((*string)(b.photoUrl)),
		PhoneNumber:   null.StringFromPtr((*string)(b.phoneNumber)),
	}
}
