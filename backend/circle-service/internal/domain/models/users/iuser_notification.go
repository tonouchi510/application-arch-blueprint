package users

type IUserNotification interface {
	SetId(id UserId)
	SetName(name UserName)
	SetEmail(email Email)
	SetEmailVerified(emailVerified bool)
	SetPhotoUrl(photoUrl *PhotoUrl)
	SetPhoneNumber(phoneNumber *PhoneNumber)
}
