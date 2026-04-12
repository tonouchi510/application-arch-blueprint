.PHONY: build
build:
	flutter build web --release --dart-define=FLAVOR=production

.PHONY: build-dev
build-dev:
	flutter build web --profile --dart-define=FLAVOR=development --source-maps

.PHONY: fetch-gql-schema
fetch-gql-schema:
	@npx gq http://localhost:8080/v1/graphql -H "X-Hasura-Admin-Secret: password" --introspect > ./lib/data/graphql/schema.graphql

.PHONY: gen
gen:
	@flutter pub get
	@make fetch-gql-schema
	@flutter packages pub run build_runner build --delete-conflicting-outputs
