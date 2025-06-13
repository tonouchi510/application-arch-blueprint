package boards

import (
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/errors"
)

type Status uint8

const (
	Open   Status = iota // オープン
	Closed               // クローズ
)

func NewStatus(status uint8) (*Status, error) {
	if status >= 2 {
		return nil, errors.Errorf(codes.InvalidArgument, "Invalid status value: %d", status)
	}
	statusValue := Status(status)
	return &statusValue, nil
}

func (s Status) String() string {
	switch s {
	case Open:
		return "Open"
	case Closed:
		return "Closed"
	default:
		return "Unknown"
	}
}
