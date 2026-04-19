package firebase

import (
	"context"
	"os"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/auth"
)

// NewFirebaseAuthClient initializes a Firebase Auth client using Application Default Credentials.
// The FIREBASE_PROJECT_ID environment variable is used to specify the Firebase project.
func NewFirebaseAuthClient() (*auth.Client, error) {
	ctx := context.Background()
	app, err := firebase.NewApp(ctx, &firebase.Config{
		ProjectID: os.Getenv("FIREBASE_PROJECT_ID"),
	})
	if err != nil {
		return nil, err
	}
	return app.Auth(ctx)
}
