package service

import (
	"context"
	"fmt"

	"github.com/ndirangug/beba-backend/db"
	"github.com/ndirangug/beba-backend/logger"
	"github.com/ndirangug/beba-backend/models"
	"github.com/ndirangug/beba-backend/protos"
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

	result := s.db.Conn.Find(&dbDrivers)

	for _, dbDriver := range dbDrivers {
		if err := stream.Send(dbDriver.ToProtos()); err != nil {
			return err
		}
	}

	return result.Error

}

func (s *BackendService) GetVehicles(payload *protos.VehicleRequest, stream protos.BebaBackend_GetVehiclesServer) error {
	return nil
}

func (s *BackendService) GetVehicle(ctx context.Context, req *protos.VehicleRequest) (*protos.Vehicle, error) {
	return &protos.Vehicle{}, nil
}

func (s *BackendService) GetTrips(payload *protos.TripsRequest, stream protos.BebaBackend_GetTripsServer) error {
	return nil
}

func (s *BackendService) NewDriver(context.Context, *protos.Driver) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
}

func (s *BackendService) NewVehicle(context.Context, *protos.Vehicle) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
}

func (s *BackendService) NewTrip(context.Context, *protos.Trip) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
}

func (s *BackendService) CancelTrip(context.Context, *protos.RecordId) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
}

func (s *BackendService) RemoveDriver(context.Context, *protos.RecordId) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
}

func (s *BackendService) RemoveVehicle(context.Context, *protos.RecordId) (*protos.WriteRecordResponse, error) {
	return &protos.WriteRecordResponse{}, nil
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
