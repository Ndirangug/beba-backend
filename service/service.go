package service

import (
	"context"
	"fmt"

	"github.com/ndirangug/beba-backend/db"
	"github.com/ndirangug/beba-backend/logger"
	"github.com/ndirangug/beba-backend/models"
	"github.com/ndirangug/beba-backend/protos"
	"gorm.io/gorm"
)

// Backend implements  grpc methods auto-generated from .proto file
type BackendService struct {
	logger *logger.TinyLogger
	db     *db.DbConnection
	protos.UnimplementedBebaBackendServer
}

// TinyErpGrpc returns a new server
func NewBackendService(logger *logger.TinyLogger) *BackendService {
	conn, err := db.NewDbConnection()

	if err != nil {
		logger.Panic("failed to connect to database. Err: %s", err)
	}

	return &BackendService{logger: logger, db: conn}
}

func (s *BackendService) TestHello(ctx context.Context, request *protos.TestHelloRequest) (*protos.TestHelloResponse, error) {
	return &protos.TestHelloResponse{Response: fmt.Sprintf("Hello %s", request.Name)}, nil
}

func (s *BackendService) GetDriver(ctx context.Context, in *protos.DriverRequest) (*protos.Driver, error) {
	dbDriver := &models.Driver{}
	result := s.db.Conn.First(dbDriver, in.IdNumber)

	return dbDriver.ToProtos(), result.Error
}

func (s *BackendService) GetDrivers(payload *protos.DriverRequest, stream protos.BebaBackend_GetDriversServer) error {
	dbDrivers := []*models.Driver{}
	searchString := fmt.Sprintf("%s%s%s", "%", payload.SearchQuery, "%")

	result := s.db.Conn.Where("first_name LIKE ? OR last_name LIKE ?", searchString, searchString).Find(&dbDrivers)

	for _, dbDriver := range dbDrivers {
		if err := stream.Send(dbDriver.ToProtos()); err != nil {
			return err
		}
	}

	return result.Error

}

func (s *BackendService) GetVehicles(payload *protos.VehicleRequest, stream protos.BebaBackend_GetVehiclesServer) error {
	dbVehicles := []*models.Vehicle{}
	searchString := fmt.Sprintf("%s%s%s", "%", payload.SearchQuery, "%")

	result := s.db.Conn.Where("registration_number LIKE ? ", searchString).Find(&dbVehicles)

	for _, dbVehicle := range dbVehicles {
		if err := stream.Send(dbVehicle.ToProtos()); err != nil {
			return err
		}
	}

	return result.Error
}

func (s *BackendService) GetVehicle(ctx context.Context, req *protos.VehicleRequest) (*protos.Vehicle, error) {
	dbVehicle := &models.Vehicle{}
	result := s.db.Conn.Where("registration_number = ? ", req.SearchQuery).First(dbVehicle)

	return dbVehicle.ToProtos(), result.Error
}

func (s *BackendService) GetTrips(payload *protos.TripsRequest, stream protos.BebaBackend_GetTripsServer) error {
	dbTrips := []*models.Trip{}
	//searchString := fmt.Sprintf("%s%s%s", "%", payload.SearchQuery, "%")

	// var result *gorm.DB
	// if (payload != &protos.TripsRequest{}) {
	// 	result = s.db.Conn.Where("driver_id = ? OR vehicle_id = ? OR status = ?", payload.DriverId, payload.VehicleId, payload.Status).Find(&dbTrips)
	// } else {
	// 	result = s.db.Conn.Find(&dbTrips)
	// }

	result := s.db.Conn.Find(&dbTrips)

	for _, dbTrip := range dbTrips {
		if err := stream.Send(dbTrip.ToProtos()); err != nil {
			return err
		}
	}

	return result.Error
}

func (s *BackendService) NewDriver(ctx context.Context, payload *protos.Driver) (*protos.WriteRecordResponse, error) {
	dbDriver := (&models.Driver{}).FromProtos(payload)
	result := s.db.Conn.Create(&dbDriver)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Creating driver failed", Status: false, RecordId: uint32(dbDriver.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully created driver", Status: true, RecordId: uint32(dbDriver.ID)}

	return response, result.Error
}

func (s *BackendService) NewVehicle(ctx context.Context, payload *protos.Vehicle) (*protos.WriteRecordResponse, error) {
	dbVehicle := (&models.Vehicle{}).FromProtos(payload)
	result := s.db.Conn.Create(&dbVehicle)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Creating vehicle failed", Status: false, RecordId: uint32(dbVehicle.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully vehicle driver", Status: true, RecordId: uint32(dbVehicle.ID)}

	return response, result.Error
}

func (s *BackendService) NewTrip(ctx context.Context, payload *protos.Trip) (*protos.WriteRecordResponse, error) {
	dbTrip := (&models.Trip{}).FromProtos(payload)
	result := s.db.Conn.Create(&dbTrip)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Creating trip failed", Status: false, RecordId: uint32(dbTrip.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully trip driver", Status: true, RecordId: uint32(dbTrip.ID)}

	return response, result.Error
}

func (s *BackendService) CancelTrip(ctx context.Context, tripId *protos.RecordId) (*protos.WriteRecordResponse, error) {
	dbTrip := &models.Trip{Model: gorm.Model{ID: uint(tripId.Id)}, Status: "cancelled"}
	result := s.db.Conn.UpdateColumns(&dbTrip)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Cancel trip failed", Status: false, RecordId: uint32(dbTrip.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully cancelled trip", Status: true, RecordId: uint32(dbTrip.ID)}

	return response, result.Error
}

func (s *BackendService) RemoveDriver(ctx context.Context, driverId *protos.RecordId) (*protos.WriteRecordResponse, error) {
	dbDriver := &models.Driver{Model: gorm.Model{ID: uint(driverId.Id)}}
	result := s.db.Conn.Delete(&dbDriver, dbDriver.ID)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Delete driver failed", Status: false, RecordId: uint32(dbDriver.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully deleted driver", Status: true, RecordId: uint32(dbDriver.ID)}

	return response, result.Error
}

func (s *BackendService) RemoveVehicle(ctx context.Context, vehicleId *protos.RecordId) (*protos.WriteRecordResponse, error) {
	dbVehicle := &models.Vehicle{Model: gorm.Model{ID: uint(vehicleId.Id)}}
	result := s.db.Conn.Delete(&dbVehicle, dbVehicle.ID)

	response := &protos.WriteRecordResponse{}
	if result.Error != nil {
		response = &protos.WriteRecordResponse{Message: "Delete vehicle failed", Status: false, RecordId: uint32(dbVehicle.ID)}
		return nil, result.Error
	}
	response = &protos.WriteRecordResponse{Message: "Successfully deleted vehicle", Status: true, RecordId: uint32(dbVehicle.ID)}

	return response, result.Error
}

func (s *BackendService) VehicleKilometresTravelled(*protos.VehicleRequest, protos.BebaBackend_VehicleKilometresTravelledServer) error {
	return nil
}

func (s *BackendService) SendMessage(context.Context, *protos.TextMessage) (*protos.SendMessageResponse, error) {
	return &protos.SendMessageResponse{}, nil
}

func (s *BackendService) DisburseFunds(context.Context, *protos.DisburseFundsRequest) (*protos.DisburseFundsResponse, error) {
	return &protos.DisburseFundsResponse{}, nil
}
