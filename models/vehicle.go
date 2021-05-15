package models

import (
	"math/rand"
	"time"

	"github.com/bxcodec/faker"
	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
)

type Vehicle struct {
	gorm.Model         `faker:"-"`
	RegistrationNumber string          `gorm:"unique" faker:"vehicle_reg_number"`
	Type               string          `faker:"oneof: lorry,pickup,van"`
	Brand              string          `faker:"oneof: nissan,toyota, volkswagen, mitsubishi"`
	ModelName          string          `faker:"sentence len=4"`
	ModelYear          string          `faker:"year"`
	Color              string          `faker:"oneof: red,white, gray, blue"`
	DatePurchased      time.Time       `faker:"timet"`
	ExpectedEndService time.Time       `faker:"timet"`
	Condition          string          `faker:"word"`
	MaxWeight          float32         `faker:"oneof: 4.95, 9.99, 31.97"`
	FuelConsumption    float32         `faker:"oneof: 4.5, 7.2, 15.6,31.97"`
	Photo              string          `faker:"vehicle_image"`
	currentLocation    protos.Location `faker:"-"`
	Trips              []Trip          `faker:"-"`
}

func (v *Vehicle) ToProtos() *protos.Vehicle {
	rand.Seed(faker.RandomUnixTime())
	lat := -5 + rand.Float64()*(5 - -5)
	long := 34 + rand.Float64()*(42-34)
	randomLocation := protos.Location{Lat: lat, Long: long}
	return &protos.Vehicle{VehicleId: uint32(v.ID), Brand: v.Brand, Model: v.ModelName, ModelYear: v.ModelYear, RegistrationNumber: v.RegistrationNumber, FuelConsumption: v.FuelConsumption, Color: v.Color, DatePurchased: timestamppb.New(v.DatePurchased), ExpectedEndService: timestamppb.New(v.ExpectedEndService), Type: v.Type, Condition: v.Condition, MaxWeight: v.MaxWeight, CurrentLocation: &randomLocation, Photo: v.Photo}
}
func (v *Vehicle) FromProtos(vp *protos.Vehicle) *Vehicle {

	v.RegistrationNumber = vp.RegistrationNumber
	v.Type = vp.Type
	v.Brand = vp.Brand
	v.ModelName = vp.Model
	v.ModelYear = vp.ModelYear
	v.Color = vp.Color
	v.DatePurchased = vp.DatePurchased.AsTime()
	v.ExpectedEndService = vp.ExpectedEndService.AsTime()
	v.Condition = vp.Condition
	v.MaxWeight = vp.MaxWeight
	v.FuelConsumption = vp.FuelConsumption
	v.Photo = vp.Photo
	return v
}
