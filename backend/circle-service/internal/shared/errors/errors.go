package errors

import (
	"fmt"

	"github.com/pkg/errors"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/codes"
)

type privateError struct {
	code codes.Code
	err  error
}

func (e privateError) Error() string {
	return fmt.Sprintf("Code: %s, Msg: %s", e.code, e.err)
}

// Errorf returns an error containing an error code and a description;
func Errorf(c codes.Code, format string, a ...interface{}) error {
	if c == codes.OK {
		return nil
	}
	return privateError{
		code: c,
		err:  errors.Errorf(format, a...), // Wrap by github.com/pkg/errors package
	}
}

// Code returns the error code for err if it was produced by this system.
// Otherwise, it returns codes.Unknown.
func Code(err error) codes.Code {
	if err == nil {
		return codes.OK
	}
	var e privateError
	if errors.As(err, &e) {
		return e.code
	}
	return codes.Unknown
}

// StackTrace shows stacktrace. If error is not private error, this returns empty string.
func StackTrace(err error) string {
	var e privateError
	if errors.As(err, &e) {
		return fmt.Sprintf("%+v\n", e.err)
	}
	return ""
}
