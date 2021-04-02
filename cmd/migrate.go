package cmd

import (
	"github.com/ndirangug/beba-backend/db"
	"github.com/ndirangug/beba-backend/models"
)

func Migrate() {
	db, err := db.NewDbConnection()

	if err != nil {
		panic(err)
	}

	db.Conn.AutoMigrate(&models.Vehicle{}, &models.Driver{}, &models.Trip{})
}
