package cmd

import (
	"fmt"
	"reflect"
	"time"

	"math/rand"

	"github.com/bxcodec/faker/v3"
	"github.com/ndirangug/beba-backend/db"
	"github.com/ndirangug/beba-backend/models"
)

func Seed() {
	registerCustomGenerators()

	db, err := db.NewDbConnection()

	if err != nil {
		panic(err)
	}

	//db.Conn.AutoMigrate(&models.Vehicle{}, &models.Driver{}, &models.Trip{})

	//	TODO: first clear all data from tables then begin seeding

	drivers := []*models.Driver{}
	vehicles := []*models.Vehicle{}
	trips := []*models.Trip{}

	faker.SetRandomMapAndSliceSize(30)
	err = faker.FakeData(&drivers)
	if err != nil {
		panic(err)
	}

	err = faker.FakeData(&vehicles)
	if err != nil {
		panic(err)
	}

	err = faker.FakeData(&trips)
	if err != nil {
		panic(err)
	}

	db.Conn.Create(drivers)
	db.Conn.Create(vehicles)
	db.Conn.Create(trips)

}

func registerCustomGenerators() {
	_ = faker.AddProvider("vehicle_reg_number", func(v reflect.Value) (interface{}, error) {
		letters := []rune{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}

		return fmt.Sprintf("K%c%c %d%c", letters[rand.Intn(25)], letters[rand.Intn(25)], rand.Intn(999-100)+100, letters[rand.Intn(25)]), nil
	})

	_ = faker.AddProvider("timet", func(v reflect.Value) (interface{}, error) {
		min := time.Date(1970, 1, 0, 0, 0, 0, 0, time.UTC).Unix()
		max := time.Date(2070, 1, 0, 0, 0, 0, 0, time.UTC).Unix()
		delta := max - min

		sec := rand.Int63n(delta) + min
		return time.Unix(sec, 0), nil
	})

}
