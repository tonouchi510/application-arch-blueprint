package boards

type BoardCreateCommand struct {
	CircleId string
	Topic    string
}

type BoardChangeTopicCommand struct {
	BoardId  string
	CircleId string
	NewTopic string
}

type BoardChangeStatusCommand struct {
	BoardId   string
	CircleId  string
	NewStatus int
}

type BoardAddPostCommand struct {
	BoardId  string
	CircleId string
	UserId   string
	Content  string
}

type BoardDeleteCommand struct {
	BoardId  string
	CircleId string
}
