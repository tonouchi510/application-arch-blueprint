package users

// IUserNotification is an interface for notifying object of user.
type IUserNotification interface {
	SetId(id UserId)
	SetName(name UserName)
	SetEmail(email Email)
	SetEmailVerified(emailVerified bool)
	SetPhotoUrl(photoUrl *PhotoUrl)
	SetPhoneNumber(phoneNumber *PhoneNumber)
}
