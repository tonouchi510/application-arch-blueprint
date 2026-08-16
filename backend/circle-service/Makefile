# variables
FIREBASE_PROJECT_ID := "application-arch-blueprint"
DATABASE_URL := postgres://postgres:password@postgres:5432/main
# `make -C ../.. firebase-emulator` で起動したAuth Emulatorに接続する
FIREBASE_AUTH_EMULATOR_HOST := localhost:9099
PATH_TO_SQL_BOILER := $(shell ls -d $(shell go env GOMODCACHE)/github.com/aarondl/sqlboiler/v4@v* 2>/dev/null | sort -V | tail -n 1)

# backend(go)
.PHONY: setup
setup:
	go install go.uber.org/mock/mockgen@latest
	go install github.com/aarondl/sqlboiler/v4@latest
	go install github.com/aarondl/sqlboiler/v4/drivers/sqlboiler-psql@latest
	go install github.com/99designs/gqlgen@latest
	go install github.com/google/wire/cmd/wire@latest

.PHONY: run
run:
	FIREBASE_PROJECT_ID=$(FIREBASE_PROJECT_ID) FIREBASE_AUTH_EMULATOR_HOST=$(FIREBASE_AUTH_EMULATOR_HOST) DATABASE_URL=$(DATABASE_URL) go run server.go

.PHONY: build
build:
	go build -o backend_service

.PHONY: clean
clean:
	rm backend_service

.PHONY: test
test:
	go test -v -cover -covermode=atomic ./test/...

.PHONY: code-check
code-check:
	go fmt ./...
	go vet ./...

.PHONY: gen
gen: sqlboiler gqlgen
	go generate ./...
	wire ./internal/shared/di/...

### 事前にdocker-compose up -dでDBを起動しておく必要がある
.PHONY: sqlboiler
sqlboiler:
	sqlboiler psql --config configs/db/sqlboiler.toml \
	--templates ${PATH_TO_SQL_BOILER}/templates/main \
	--templates ${PATH_TO_SQL_BOILER}/templates/test \
	--templates configs/db/sqlboiler_templates

.PHONY: gqlgen
gqlgen:
	go run github.com/99designs/gqlgen generate --config configs/graphql/gqlgen.yml
