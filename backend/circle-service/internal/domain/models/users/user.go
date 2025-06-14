package users

// User Entity for explaining Firebase Authentication user
type User struct {
	Id            UserId
	name          UserName
	email         Email
	emailVerified bool
	photoUrl      *PhotoUrl
	phoneNumber   *PhoneNumber
}

func NewUser(id UserId, name UserName, email Email, emailVerified bool, photoUrl *PhotoUrl, phoneNumber *PhoneNumber) *User {
	newUser := User{
		Id:            id,
		name:          name,
		email:         email,
		emailVerified: emailVerified,
		photoUrl:      photoUrl,
		phoneNumber:   phoneNumber,
	}
	return &newUser
}

func (u *User) ChangeName(name UserName) {
	u.name = name
}

func (u *User) ChangeEmail(email Email) {
	u.email = email
	u.emailVerified = false // If you change your email address, email will not be verified.
}

func (u *User) ChangePhotoUrl(photoUrl *PhotoUrl) {
	u.photoUrl = photoUrl
}

func (u *User) ChangePhoneNumber(phoneNumber *PhoneNumber) {
	u.phoneNumber = phoneNumber
}

func (u User) Equals(other User) bool {
	return (u.Id == other.Id)
}

func (u User) Notify(note IUserNotification) {
	note.SetId(u.Id)
	note.SetName(u.name)
	note.SetEmail(u.email)
	note.SetEmailVerified(u.emailVerified)
	note.SetPhotoUrl(u.photoUrl)
	note.SetPhoneNumber(u.phoneNumber)
}
