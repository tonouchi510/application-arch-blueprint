package middleware

import (
	"context"
	"encoding/json"
	"net/http"
	"os"

	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/application/rbac"
)

// Middleware decodes the share session cookie and packs the session into context
func SampleAuthIntercepter() func(http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			switch r.URL.Path {
			case "/query":
				var uid string
				if val, ok := r.Header["X-Hasura-User-Id"]; ok {
					uid = val[0]
				} else {
					// 認証済みのユーザIDがヘッダーにない場合、まずsecretがあるかチェック
					// hasura remote schemaロード時のschema取得用途。実際のgql関数はcontextに認証情報ないと呼び出せない
					secret := r.Header.Get("register-secret")
					if secret != "" && secret == os.Getenv("HASURA_REGISTER_SECRET") {
						next.ServeHTTP(w, r)
						return
					}
					// secretもない場合は権限エラーで終了
					w.Header().Set("Content-Type", "application/json")
					w.WriteHeader(http.StatusForbidden)
					json.NewEncoder(w).Encode(map[string]string{"error": "User information is not set"})
					return
				}

				var role string
				if val, ok := r.Header["X-Hasura-Role"]; ok {
					role = val[0]
				} else {
					role = "freemium"
				}

				authUser, err := rbac.NewAuthUser(uid, role)
				if err != nil {
					w.Header().Set("Content-Type", "application/json")
					w.WriteHeader(http.StatusForbidden)
					json.NewEncoder(w).Encode(map[string]string{"error": err.Error()})
					return
				}

				ctx := r.Context()
				ctx = context.WithValue(ctx, "user", authUser)

				// and call the next with our new context
				r = r.WithContext(ctx)
				next.ServeHTTP(w, r)

			case "/healthz":
				next.ServeHTTP(w, r)

			default:
				panic("unknown path: " + r.URL.Path)
			}
		})
	}
}
