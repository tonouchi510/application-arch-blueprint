package users

type RegistorUserFromFirebaseAuthCommand struct {
	Uid           string
	Name          string
	Email         string
	EmailVerified bool
	PhotoUrl      *string
	PhoneNumber   *string
}

type UpdateUserAttributesCommand struct {
	Name        *string
	Email       *string
	PhotoUrl    *string
	PhoneNumber *string
}

type DeleteUserCommand struct {
	Uid string
}
