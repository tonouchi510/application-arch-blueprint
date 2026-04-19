package main

import (
	"database/sql"
	"log/slog"
	"net/http"
	"net/url"
	"os"
	"time"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/playground"
	"github.com/aarondl/sqlboiler/v4/boil"
	"github.com/go-chi/chi"
	_ "github.com/lib/pq"
	"github.com/rs/cors"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/interface/graph"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/interface/graph/middleware"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/di"
	"github.com/tonouchi510/application-arch-blueprint/circle-service/internal/shared/logger"
)

const defaultPort = "5001"

func main() {
	env := os.Getenv("ENV")
	if env == "" {
		panic("ENV is not set")
	}

	logLevel := slog.LevelInfo
	if env == "development" || env == "dev" || env == "local" {
		logLevel = slog.LevelDebug
	}

	// GCP Cloud Logging 互換のハンドラーを使用
	gcpHandler := logger.NewGCPHandler(os.Stdout, &slog.HandlerOptions{
		Level: logLevel,
	})
	log := slog.New(gcpHandler)
	slog.SetDefault(log)

	port := os.Getenv("PORT")
	if port == "" {
		port = defaultPort
	}
	db_url := os.Getenv("DATABASE_URL")
	if db_url == "" {
		panic("DATABASE_URL is not set")
	}
	tz := os.Getenv("TZ")
	if tz == "" {
		tz = "Asia/Tokyo"
	}

	sslmode := "require"
	if env == "local" {
		sslmode = "disable"
	}
	loc, err := time.LoadLocation(tz)
	if err != nil {
		slog.Error("Failed to load timezone", "error", err, "timezone", tz)
		panic(err)
	}
	time.Local = loc
	boil.SetLocation(loc)

	parsedDBURL, err := url.Parse(db_url)
	if err != nil {
		slog.Error("Failed to parse database url", "error", err)
		panic(err)
	}
	query := parsedDBURL.Query()
	query.Set("TimeZone", tz)
	query.Set("sslmode", sslmode)
	parsedDBURL.RawQuery = query.Encode()
	dsn := parsedDBURL.String()
	db, err := sql.Open("postgres", dsn)
	if err != nil {
		slog.Error("Failed to open database connection", "error", err, "dsn", dsn)
		panic(err)
	}
	defer db.Close()

	// DB接続確認
	if err := db.Ping(); err != nil {
		slog.Error("Failed to ping database", "error", err)
		panic(err)
	}

	slog.Debug("Database connection established successfully")
	boil.SetDB(db)

	router := chi.NewRouter()

	origins := []string{}
	switch env {
	case "local", "":
		origins = []string{
			"http://localhost:3000", // Webアプリローカル環境
		}
	default:
		origins = []string{
			os.Getenv("WEB_APP_URL"), // WebアプリURL
		}
	}

	// CORSミドルウェアを追加
	router.Use(cors.New(cors.Options{
		AllowedOrigins:   origins,
		AllowedMethods:   []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"Content-Type", "Authorization", "X-Requested-With"},
		AllowCredentials: true,
		Debug:            false,
	}).Handler)

	// UTF-8 Content-Typeを設定
	router.Use(func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			if r.URL.Path == "/query" {
				w.Header().Set("Content-Type", "application/json; charset=utf-8")
			}
			next.ServeHTTP(w, r)
		})
	})

	// 認証ミドルウェアを追加
	router.Use(middleware.SampleAuthIntercepter())

	srv := handler.NewDefaultServer(
		graph.NewExecutableSchema(
			graph.Config{
				Resolvers: func() *graph.Resolver {
					resolver, err := di.InitializeResolver()
					if err != nil {
						slog.Error("Failed to initialize resolver", "error", err)
						panic(err)
					}
					return resolver
				}(),
			},
		),
	)

	router.Handle("/", playground.Handler("GraphQL playground", "/query"))
	router.Handle("/query", srv)

	// ヘルスチェックエンドポイントを追加
	router.Get("/healthz", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte("OK"))
	})

	slog.Info("Starting GraphQL server", "port", port, "env", env)

	if err := http.ListenAndServe(":"+port, router); err != nil {
		slog.Error("Server failed to start", "error", err, "port", port)
		panic(err)
	}
}
