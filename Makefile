# variables
FIREBASE_PROJECT_ID := "YOUR_PROJECT_ID"
DATABASE_URL := postgres://postgres:password@postgres:5432/main
BACKEND_SERVICE_NAME := circle-service

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
