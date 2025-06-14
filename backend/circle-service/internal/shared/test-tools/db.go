package testtools

import (
	"database/sql"
	"fmt"
	"os"
	"time"

	_ "github.com/lib/pq"
	dockertest "github.com/ory/dockertest/v3"
)

type DBContainer struct {
	Pool     *dockertest.Pool
	Resource *dockertest.Resource
	DB       *sql.DB
}

func NewDBContainer() (*DBContainer, error) {
	// Dockerとの接続
	pool, err := dockertest.NewPool("")
	if err != nil {
		return nil, err
	}

	// コンテナ起動
	pwd, _ := os.Getwd()
	resource, err := pool.RunWithOptions(&dockertest.RunOptions{
		Repository: "postgres",
		Tag:        "15.1",
		Env:        []string{"POSTGRES_USER=postgres", "POSTGRES_PASSWORD=secret"},
		Mounts:     []string{pwd + "/../../../../configs/db/init/ddl.sql:/docker-entrypoint-initdb.d/ddl.sql"}, // test-tools/ddl.sql は hasura/migrationsの最新版に追従してください。
	})
	if err != nil {
		return nil, err
	}

	dsn := fmt.Sprintf("postgres://postgres:secret@localhost:%s/postgres?sslmode=disable&TimeZone=Asia/Tokyo", resource.GetPort("5432/tcp"))
	var db *sql.DB

	// exponential backoff でコンテナの起動を待つ
	if err := pool.Retry(func() error {
		time.Sleep(time.Second * 5)
		var err error
		db, err = sql.Open("postgres", dsn)
		if err != nil {
			return err
		}
		return db.Ping()
	}); err != nil {
		pool.Purge(resource)
		return nil, err
	}

	return &DBContainer{Pool: pool, Resource: resource, DB: db}, nil
}
