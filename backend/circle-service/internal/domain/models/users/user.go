package users

// User Firebase Authenticationのユーザ情報を表すモデル
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

func (u *User) ChangeName(name UserName) error {
	u.name = name
	return nil
}

func (u *User) ChangeEmail(email Email) {
	u.email = email
	u.emailVerified = false // メールアドレスを変更した場合、メール認証は未完了とする
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
