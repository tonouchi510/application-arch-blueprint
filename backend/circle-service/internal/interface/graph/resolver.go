package graph

import (
	appboards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/boards"
	appcircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/circles"
	apppermissions "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/permissions"
	appusers "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/users"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require
// here.

type Resolver struct {
	userApp       appusers.IUserApplicationService
	circleApp     appcircles.ICircleApplicationService
	boardApp      appboards.IBoardApplicationService
	permissionApp apppermissions.ICirclePermissionApplicationService
}

func NewResolver(
	userApp appusers.IUserApplicationService,
	circleApp appcircles.ICircleApplicationService,
	boardApp appboards.IBoardApplicationService,
	permissionApp apppermissions.ICirclePermissionApplicationService,
) *Resolver {
	return &Resolver{
		userApp:       userApp,
		circleApp:     circleApp,
		boardApp:      boardApp,
		permissionApp: permissionApp,
	}
}
