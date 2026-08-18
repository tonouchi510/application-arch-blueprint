# variables
FIREBASE_PROJECT_ID := "application-arch-blueprint"
DATABASE_URL := postgres://postgres:password@postgres:5432/main

.PHONY: setup
setup:
	@npm install -g @mermaid-js/mermaid-cli
	@npm i -g create-next-app
	@npm i -g firebase-tools
	@brew install hasura-cli
	@cd backend/circle-service && make setup
	@$(MAKE) setup-website

# docker compose
docker-compose-build:
	docker compose build

.PHONY: docker-compose-up
docker-compose-up:
	FIREBASE_PROJECT_ID=$(FIREBASE_PROJECT_ID) DATABASE_URL=$(DATABASE_URL) docker compose up -d

# Firebase Auth Emulator (docker-composeを使わずcircle-serviceをネイティブ実行する場合用)
# あらかじめ用意したテストユーザー(backend/firebase-emulator/seed-data)付きで起動する
.PHONY: firebase-emulator
firebase-emulator:
	firebase emulators:start --only auth --project $(FIREBASE_PROJECT_ID) --import=./backend/firebase-emulator/seed-data


# App
.PHONY: run-local
run-local:
	cd frontend/app && flutter run --flavor local --dart-define=FLAVOR=local -d chrome --web-port 8888


# WebSite
.PHONY: setup-website
setup-website:
	cd frontend/website && npm install

.PHONY: run-website
run-website:
	cd frontend/website && npm run dev

.PHONY: build-website
build-website:
	cd frontend/website && npm run build

.PHONY: lint-website
lint-website:
	cd frontend/website && npm run lint

# hasura
hasura-console:
	cd backend/hasura && hasura console

hasura-migrate-init:
	@cd backend/hasura && hasura migrate create "init" --from-server

hasura-seed-create:
	@cd backend/hasura && hasura seed create "init_circles" --from-table circles --from-table circle_members --from-table circle_permissions --database-name default
	@cd backend/hasura && hasura seed create "init_boards" --from-table boards --from-table posts --database-name default

hasura-seed-apply:
	@cd backend/hasura && hasura seed apply --database-name default
