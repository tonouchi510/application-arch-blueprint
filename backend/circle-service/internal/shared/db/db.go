package db

import "github.com/aarondl/sqlboiler/v4/boil"

//go:generate mockgen -source=$GOFILE -destination=../../../test/mock/shared/$GOPACKAGE/$GOFILE

type DbExecutor interface {
	boil.ContextExecutor
}
