package models

import (
	"time"

	"gorm.io/gorm"
)

type Trip struct {
	gorm.Model
	DriverID          uint
	VehicleID         uint
	TimeStart         time.Time
	TimeEnd           time.Time
	TimeExpectedStart time.Time
	TimeExpectedEnd   time.Time
	LatitudeBegin     float64
	LongitudeBegin    float64
	LatitudeEnd       float64
	LongitudeEnd      float64
}
