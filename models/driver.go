package models

import (
	"time"

	"gorm.io/gorm"
)

type Driver struct {
	gorm.Model
	FirstName        string
	LastName         string
	Email            string `gorm:"unique"`
	Phone            string `gorm:"unique"`
	Sex              string
	DateOfBirth      time.Time
	DateEmployed     time.Time
	Comment          string
	EvaluationReport string
	DriversLicence   string
	Trips            []Trip
}
