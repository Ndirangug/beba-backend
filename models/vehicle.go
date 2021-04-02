package models

import (
	"time"

	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
)

type Vehicle struct {
	gorm.Model
	RegistrationNumber string
	Type               string
	Brand              string
	ModelName          string
	ModelYear          string
	Color              string
	DatePurchased      time.Time
	ExpectedEndService time.Time
	Condition          string
	MaxWeight          float32
	FuelConsumption    float32
	Trips              []Trip
}

func (v *Vehicle) ToProtos() *protos.Vehicle {
	return &protos.Vehicle{VehicleId: uint32(v.ID), Brand: v.Brand, Model: v.ModelName, ModelYear: v.ModelYear, RegistrationNumber: v.RegistrationNumber, FuelConsumption: v.FuelConsumption, Color: v.Color, DatePurchased: timestamppb.New(v.DatePurchased), Type: v.Type, Condition: v.Condition, MaxWeight: v.MaxWeight}
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

	return v
}
