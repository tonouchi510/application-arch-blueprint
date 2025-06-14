package circles

type CircleCreateCommand struct {
	Name        string
	Description string
}

type CircleAddMemberCommand struct {
	CircleId    string
	NewMemberId string
}

type CircleLeaveCommand struct {
	CircleId string
	MemberId string
}

type CircleDeleteCommand struct {
	CircleId string
}

type CircleChangeNameCommand struct {
	CircleId string
	NewName  string
}

type CircleChangeDescriptionCommand struct {
	CircleId       string
	NewDescription string
}

type CircleDelegateOwnerCommand struct {
	CircleId   string
	NewOwnerId string
}
