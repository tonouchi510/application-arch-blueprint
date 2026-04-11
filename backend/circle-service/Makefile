# variables
FIREBASE_PROJECT_ID := "YOUR_PROJECT_ID"
DATABASE_URL := postgres://postgres:password@postgres:5432/main
PATH_TO_SQL_BOILER := $(shell ls -d $(shell go env GOMODCACHE)/github.com/aarondl/sqlboiler/v4@v* 2>/dev/null | sort -V | tail -n 1)

# backend(go)
.PHONY: setup
setup:
	go install go.uber.org/mock/mockgen@latest
	go install github.com/aarondl/sqlboiler/v4@latest
	go install github.com/aarondl/sqlboiler/v4/drivers/sqlboiler-psql@latest
	go install github.com/99designs/gqlgen@latest

.PHONY: run
run:
	FIREBASE_PROJECT_ID=$(FIREBASE_PROJECT_ID) DATABASE_URL=$(DATABASE_URL) go run server.go

.PHONY: build
build:
	go build -o backend_service

.PHONY: clean
clean:
	rm backend_service

.PHONY: test
test:
	go test -v -cover -covermode=atomic ./internal/...

.PHONY: code-check
code-check:
	go fmt ./...
	go vet ./...

.PHONY: gen
gen: sqlboiler
	go generate ./...

### 事前にdocker-compose up -dでDBを起動しておく必要がある
.PHONY: sqlboiler
sqlboiler:
	sqlboiler psql --config configs/db/sqlboiler.toml \
	--templates ${PATH_TO_SQL_BOILER}/templates/main \
	--templates ${PATH_TO_SQL_BOILER}/templates/test \
	--templates configs/db/sqlboiler_templates
