package users

import domainModel "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"

type UserData struct {
	Id            string
	Name          string
	Email         string
	EmailVerified bool
	PhoneNumber   *string
	PhotoUrl      *string
}

type UserDataBuilder struct {
	id            domainModel.UserId
	name          domainModel.UserName
	email         domainModel.Email
	emailVerified bool
	photoUrl      *domainModel.PhotoUrl
	phoneNumber   *domainModel.PhoneNumber
}

func (b *UserDataBuilder) SetId(id domainModel.UserId) {
	b.id = id
}

func (b *UserDataBuilder) SetName(name domainModel.UserName) {
	b.name = name
}

func (b *UserDataBuilder) SetEmail(email domainModel.Email) {
	b.email = email
}

func (b *UserDataBuilder) SetEmailVerified(emailVerified bool) {
	b.emailVerified = emailVerified
}

func (b *UserDataBuilder) SetPhotoUrl(photoUrl *domainModel.PhotoUrl) {
	b.photoUrl = photoUrl
}

func (b *UserDataBuilder) SetPhoneNumber(phoneNumber *domainModel.PhoneNumber) {
	b.phoneNumber = phoneNumber
}

func (b UserDataBuilder) Build() UserData {
	data := UserData{
		Id:            string(b.id),
		Name:          string(b.name),
		Email:         string(b.email),
		EmailVerified: b.emailVerified,
		PhotoUrl:      nil,
		PhoneNumber:   nil,
	}
	if b.photoUrl != nil {
		photoUrl := string(*b.photoUrl)
		data.PhotoUrl = &photoUrl
	}
	if b.phoneNumber != nil {
		phoneNumber := string(*b.phoneNumber)
		data.PhoneNumber = &phoneNumber
	}
	return data
}
