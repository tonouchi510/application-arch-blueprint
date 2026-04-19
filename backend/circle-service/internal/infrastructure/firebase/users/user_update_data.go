package users

import (
	"firebase.google.com/go/v4/auth"
	domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
)

type userUpdateBuilder struct {
	params *auth.UserToUpdate
	id     domainModel.UserId
}

func (b *userUpdateBuilder) SetId(id domainModel.UserId) {
	b.id = id
}

func (b *userUpdateBuilder) SetName(name domainModel.UserName) {
	b.params = b.params.DisplayName(string(name))
}

func (b *userUpdateBuilder) SetEmail(email domainModel.Email) {
	b.params = b.params.Email(string(email))
}

func (b *userUpdateBuilder) SetEmailVerified(emailVerified bool) {
	b.params = b.params.EmailVerified(emailVerified)
}

func (b *userUpdateBuilder) SetPhotoUrl(photoUrl *domainModel.PhotoUrl) {
	if photoUrl != nil {
		b.params = b.params.PhotoURL(string(*photoUrl))
	}
}

func (b *userUpdateBuilder) SetPhoneNumber(phoneNumber *domainModel.PhoneNumber) {
	if phoneNumber != nil {
		b.params = b.params.PhoneNumber(string(*phoneNumber))
	}
}

func (b *userUpdateBuilder) Build() *auth.UserToUpdate {
	return b.params
}
