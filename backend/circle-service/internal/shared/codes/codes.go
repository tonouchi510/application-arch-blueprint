package codes

type Code string

const (
	OK Code = "OK"

	InvalidSyntax     Code = "invalid_syntax"
	InvalidArgument   Code = "invalid_argument"
	AlreadyExists     Code = "already_exists"
	NotFound          Code = "not_found"
	InvalidOperation  Code = "invalid_operation"
	Internal          Code = "internal_error"
	UnAuthorized      Code = "unauthorized"
	Forbidden         Code = "forbidden"
	PermissionDenied  Code = "permission_denied"
	ResourceExhausted Code = "resource_exhausted"

	Database    Code = "database_error"
	ExternalAPI Code = "external_api_error"
	Google      Code = "google_error"

	Unknown Code = "unknown"
)
