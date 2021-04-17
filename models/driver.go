package models

import (
	"time"

	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
)

type Driver struct {
	gorm.Model       `faker:"-"`
	FirstName        string    `faker:"first_name"`
	LastName         string    `faker:"last_name"`
	Email            string    `gorm:"unique" faker:"email"`
	Phone            string    `gorm:"unique" faker:"phone_number"`
	Sex              string    `faker:"oneof: male,female"`
	DateOfBirth      time.Time `faker:"timet"`
	DateEmployed     time.Time `faker:"timet"`
	Comment          string    `faker:"sentence"`
	EvaluationReport string    `faker:"url"`
	DriversLicence   string    `faker:"url"`
	Avatar           string    `faker:"avatar"`
	Trips            []Trip    `faker:"-"`
}

func (d *Driver) ToProtos() *protos.Driver {
	return &protos.Driver{FirstName: d.FirstName, LastName: d.LastName, Email: d.Email, Phone: d.Phone, Sex: d.Sex, DateOfBirth: timestamppb.New(d.DateOfBirth), DateEmployed: timestamppb.New(d.DateEmployed), Comment: d.Comment, EvaluationReport: d.EvaluationReport, DriversLicence: d.DriversLicence, Photo: d.Avatar}
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
	d.Avatar = dp.Photo
	
	return d
}
