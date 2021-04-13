package models

import (
	"time"

	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
)

type Trip struct {
	gorm.Model        `faker:"-"`
	DriverID          uint      `faker:"boundary_start=2, boundary_end=10"`
	VehicleID         uint      `faker:"boundary_start=2, boundary_end=10"`
	TimeStart         time.Time `faker:"timet"`
	TimeEnd           time.Time `faker:"timet"`
	TimeExpectedStart time.Time `faker:"timet"`
	TimeExpectedEnd   time.Time `faker:"timet"`
	LatitudeBegin     float64   `faker:"lat"`
	LongitudeBegin    float64   `faker:"long"`
	LatitudeEnd       float64   `faker:"lat"`
	LongitudeEnd      float64   `faker:"long"`
	Status            string    `faker:"oneof: scheduled, cancelled, ongoing"`
}

func (t *Trip) ToProtos() *protos.Trip {
	return &protos.Trip{TripId: uint32(t.ID), Driver: &protos.Driver{IdNumber: uint32(t.DriverID)}, Vehicle: &protos.Vehicle{VehicleId: uint32(t.VehicleID)}, ScheduledDepartureTime: timestamppb.New(t.TimeExpectedStart), ScheduledArrivalTime: timestamppb.New(t.TimeExpectedEnd), ActualDepartureTime: timestamppb.New(t.TimeStart), ActualArrivalTime: timestamppb.New(t.TimeEnd), Status: t.Status, Origin: &protos.Location{Lat: t.LatitudeBegin, Long: t.LongitudeBegin}, Destination: &protos.Location{Lat: t.LatitudeEnd, Long: t.LongitudeEnd}}
}

func (t *Trip) FromProtos(tp *protos.Trip) *Trip {
	t.DriverID = uint(tp.Driver.IdNumber)
	t.VehicleID = uint(tp.Vehicle.VehicleId)
	t.TimeStart = tp.ActualDepartureTime.AsTime()
	t.TimeEnd = tp.ActualArrivalTime.AsTime()
	t.TimeExpectedStart = tp.ScheduledDepartureTime.AsTime()
	t.TimeExpectedEnd = tp.ScheduledArrivalTime.AsTime()
	t.LatitudeBegin = tp.Origin.Lat
	t.LongitudeBegin = tp.Origin.Long
	t.LatitudeEnd = tp.Destination.Lat
	t.LongitudeEnd = tp.Destination.Long
	t.Status = tp.Status

	return t
}
