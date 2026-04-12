//go:build wireinject
// +build wireinject

package di

import (
	"github.com/google/wire"
	appboards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/boards"
	appcircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/circles"
	apppermissions "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/permissions"
	appusers "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/users"
	domainboards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/boards"
	domaincircles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/circles"
	domainusers "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/models/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/domain/services"
	infra_boards "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/boards"
	infra_circles "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/circles"
	infra_permissions "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/permissions"
	infra_users "github.com/tonouchi510/application-arch-blueprint/circle-service/internal/infrastructure/sqlboiler/users"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/interface/graph"
)

//go:generate wire

// InitializeResolver initializes and returns a configured Resolver
func InitializeResolver() *graph.Resolver {
	wire.Build(
		infra_users.NewUserRepository,
		infra_circles.NewCircleRepository,
		infra_boards.NewBoardRepository,
		infra_permissions.NewCirclePermissionRepository,
		domainusers.NewUserService,
		domaincircles.NewCircleService,
		domainboards.NewBoardDomainService,
		services.NewBoardCreationService,
		appcircles.NewCircleApplicationService,
		appusers.NewUserApplicationService,
		appboards.NewBoardApplicationService,
		apppermissions.NewCirclePermissionApplicationService,
		graph.NewResolver,
	)
	return &graph.Resolver{}
}
