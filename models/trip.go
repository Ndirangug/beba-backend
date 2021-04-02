package models

import (
	"time"

	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
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
	Status            string
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
