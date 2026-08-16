// local-auth-webhook is a local-development-only service.
//
// It implements Hasura's authentication webhook contract
// (https://hasura.io/docs/latest/auth/authentication/webhook/) and stands in for
// Hasura's normal JWT verification, which cannot validate the Firebase Auth
// Emulator's unsigned ID tokens.
//
// It verifies the incoming Firebase ID token against the Auth Emulator via the
// Admin SDK (which skips signature checks in emulator mode, see
// firebase.google.com/go/v4/auth) and returns X-Hasura-* session variables,
// using a role fixed by the LOCAL_HASURA_ROLE env var. See
// snippet/firebase/firebase_auth_command.py for how roles are assigned in
// production via Firebase custom claims (https://hasura.io/jwt/claims).
package main

import (
	"context"
	"encoding/json"
	"log/slog"
	"net/http"
	"os"
	"strings"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/auth"
)

const allowedRoles = "admin,premium,freemium"

type webhookRequest struct {
	Headers map[string]string `json:"headers"`
}

func headerValue(headers map[string]string, name string) string {
	for k, v := range headers {
		if strings.EqualFold(k, name) {
			return v
		}
	}
	return ""
}

func newHandler(authClient *auth.Client, role string) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var body webhookRequest
		if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
			slog.Warn("failed to decode webhook request", "error", err)
			w.WriteHeader(http.StatusBadRequest)
			return
		}

		authHeader := headerValue(body.Headers, "Authorization")
		idToken, ok := strings.CutPrefix(authHeader, "Bearer ")
		if !ok || idToken == "" {
			w.WriteHeader(http.StatusUnauthorized)
			return
		}

		token, err := authClient.VerifyIDToken(r.Context(), idToken)
		if err != nil {
			slog.Warn("failed to verify id token against auth emulator", "error", err)
			w.WriteHeader(http.StatusUnauthorized)
			return
		}

		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(map[string]string{
			"X-Hasura-User-Id":       token.UID,
			"X-Hasura-Role":          role,
			"X-Hasura-Allowed-Roles": allowedRoles,
		})
	}
}

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "5002"
	}
	role := os.Getenv("LOCAL_HASURA_ROLE")
	if role == "" {
		role = "freemium"
	}

	ctx := context.Background()
	app, err := firebase.NewApp(ctx, &firebase.Config{ProjectID: os.Getenv("FIREBASE_PROJECT_ID")})
	if err != nil {
		slog.Error("failed to initialize firebase app", "error", err)
		panic(err)
	}
	authClient, err := app.Auth(ctx)
	if err != nil {
		slog.Error("failed to initialize firebase auth client", "error", err)
		panic(err)
	}

	http.HandleFunc("/webhook", newHandler(authClient, role))

	slog.Info("starting local-auth-webhook", "port", port, "role", role)
	if err := http.ListenAndServe(":"+port, nil); err != nil {
		slog.Error("server failed to start", "error", err, "port", port)
		panic(err)
	}
}
