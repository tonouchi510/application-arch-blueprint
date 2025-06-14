# variables
FIREBASE_PROJECT_ID := "YOUR_PROJECT_ID"
DATABASE_URL := postgres://postgres:password@postgres:5432/main
BACKEND_SERVICE_NAME := circle-service

SQL_BOILER_VERSION := $(shell cd backend/${BACKEND_SERVICE_NAME} && go list -m -f '{{.Version}}' github.com/volatiletech/sqlboiler/v4)
PATH_TO_SQL_BOILER := $(shell cd backend/${BACKEND_SERVICE_NAME} && go env GOMODCACHE)/github.com/volatiletech/sqlboiler/v4@${SQL_BOILER_VERSION}


# docker compose
.PHONY: docker-compose-up
docker-compose-up:
	FIREBASE_PROJECT_ID=$(FIREBASE_PROJECT_ID) DATABASE_URL=$(DATABASE_URL) docker compose up -d

# hasura
hasura-console:
	cd backend/hasura && hasura console

hasura-migrate-init:
	@cd backend/hasura && hasura migrate create "init" --from-server

hasura-seed-create:
	@cd backend/hasura && hasura seed create "init_users" --from-table users --from-table user_profiles
	@cd backend/hasura && hasura seed create "init_records" --from-table records --from-table positions --from-table records_positions
	@cd backend/hasura && hasura seed create "init_trophies" --from-table traphies --from-table user_trophies
	@cd backend/hasura && hasura seed create "init_friends" --from-table friends

hasura-seed-apply:
	@cd backend/hasura && hasura seed apply --database-name default

# backend(go)
.PHONY: run
run:
	cd backend/${BACKEND_SERVICE_NAME} && go run server.go

.PHONY: build
build:
	cd backend/${BACKEND_SERVICE_NAME} && go build -o backend_service

.PHONY: clean
clean:
	@rm backend_service

.PHONY: test
test:
	cd backend/${BACKEND_SERVICE_NAME} && go test -v -cover -covermode=atomic ./internal/...

.PHONY: code-check
code-check:
	cd backend/${BACKEND_SERVICE_NAME} && go fmt ./...
	@cd backend/${BACKEND_SERVICE_NAME} && go vet ./...

.PHONY: go-gen
go-gen: sqlboiler
	@cd backend/${BACKEND_SERVICE_NAME} && go generate ./...

### 事前にdocker-compose up -dでDBを起動しておく必要がある
.PHONY: sqlboiler
sqlboiler:
	@cd backend/${BACKEND_SERVICE_NAME} && \
	sqlboiler psql --config configs/db/sqlboiler.toml \
	--templates ${PATH_TO_SQL_BOILER}/templates/main \
	--templates ${PATH_TO_SQL_BOILER}/templates/test \
	--templates configs/db/sqlboiler_templates
