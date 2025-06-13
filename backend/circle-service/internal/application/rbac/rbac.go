package rbac

import (
	"context"
	"fmt"
)

type Role uint8

const (
	Admin Role = iota
	Freemium
	Premium
)

// Define the same role as defined in HASURA
func convertRole(role string) (Role, error) {
	switch role {
	case "admin":
		return Admin, nil
	case "freemium":
		return Freemium, nil
	case "premium":
		return Premium, nil
	default:
		return Freemium, fmt.Errorf("invalid role: %s", role)
	}
}

type AuthUser struct {
	UID  string
	Role Role
}

func NewAuthUser(uid string, roleStr string) (*AuthUser, error) {
	role, err := convertRole(roleStr)
	if err != nil {
		return nil, err
	}
	return &AuthUser{UID: uid, Role: role}, nil
}

// ForContext finds the user from the context. REQUIRES Middleware to have run.
func ForContext(ctx context.Context) *AuthUser {
	raw, _ := ctx.Value("user").(*AuthUser)
	return raw
}

type RBACItem struct {
	CreateCirclePermission bool
}

var RBAC = map[Role]RBACItem{
	Freemium: {
		CreateCirclePermission: false,
	},
	Premium: {
		CreateCirclePermission: true,
	},
}
