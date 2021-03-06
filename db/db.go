package db

import (
	"os"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

type DbConnection struct {
	Conn *gorm.DB
}

func NewDbConnection() (*DbConnection, error) {
	dsn := os.Getenv("DATABASE_URL")
	//dsn := "host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi"
	db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})

	return &DbConnection{
		db,
	}, err

}
