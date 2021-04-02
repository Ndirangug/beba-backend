package models

import (
	"gorm.io/gorm"
)

type Vehicle struct {
	gorm.Model
	RegistrationNumber string
	Type               string
	ModelName          string
	ModelYear          string
	Color              string
	DatePurchased      string
	ExpectedEndService string
	Condition          string
	MaxWeight          float32
	FuelConsumption    float32
	Trips              []Trip
}
