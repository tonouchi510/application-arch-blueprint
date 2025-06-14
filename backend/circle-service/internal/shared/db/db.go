package db

import "github.com/volatiletech/sqlboiler/v4/boil"

//go:generate mockgen -source=$GOFILE -destination=../../../test/mock/shared/$GOPACKAGE/$GOFILE

type DbExecutor interface {
	boil.ContextExecutor
}
