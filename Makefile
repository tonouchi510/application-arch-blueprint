# variables
FIREBASE_PROJECT_ID := "application-arch-blueprint"
DATABASE_URL := postgres://postgres:password@postgres:5432/main
# ローカル実行時にlocal-auth-webhookが全リクエストに割り当てるHasuraロール。 例: make docker-compose-up ROLE=admin
ROLE := freemium

.PHONY: setup
setup:
	@npm install -g @mermaid-js/mermaid-cli
	@npm i -g create-next-app
	@npm i -g firebase-tools
	@brew install hasura-cli
	@cd backend/circle-service && make setup

# docker compose
docker-compose-build:
	docker compose build

.PHONY: docker-compose-up
docker-compose-up:
	FIREBASE_PROJECT_ID=$(FIREBASE_PROJECT_ID) DATABASE_URL=$(DATABASE_URL) LOCAL_HASURA_ROLE=$(ROLE) docker compose up -d

# Firebase Auth Emulator (docker-composeを使わずcircle-serviceをネイティブ実行する場合用)
.PHONY: firebase-emulator
firebase-emulator:
	firebase emulators:start --only auth --project $(FIREBASE_PROJECT_ID)

# App
.PHONY: run-local
run-local:
	cd frontend/app && flutter run --flavor local --dart-define=FLAVOR=local -d chrome --web-port 8888


# WebSite

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
