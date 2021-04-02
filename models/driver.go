package models

import (
	"time"

	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
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

func (d *Driver) ToProtos() *protos.Driver {
	return &protos.Driver{FirstName: d.FirstName, LastName: d.LastName, Email: d.Email, Phone: d.Phone, Sex: d.Sex, DateOfBirth: timestamppb.New(d.DateOfBirth), DateEmployed: timestamppb.New(d.DateEmployed), Comment: d.Comment, EvaluationReport: d.EvaluationReport, DriversLicence: d.DriversLicence}
}

func (d *Driver) FromProtos(dp *protos.Driver) *Driver {
	d.FirstName = dp.FirstName
	d.LastName = dp.LastName
	d.Email = dp.Email
	d.Phone = dp.Phone
	d.Sex = dp.Sex
	d.DateOfBirth = dp.DateOfBirth.AsTime()
	d.DateEmployed = dp.DateEmployed.AsTime()
	d.Comment = dp.Comment
	d.EvaluationReport = dp.EvaluationReport
	d.DriversLicence = dp.DriversLicence

	return d
}
