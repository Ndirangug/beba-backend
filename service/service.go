package service

import (
	"context"
	"fmt"

	"github.com/ndirangug/beba-backend/db"
	"github.com/ndirangug/beba-backend/logger"
	"github.com/ndirangug/beba-backend/models"
	"github.com/ndirangug/beba-backend/protos"
	"google.golang.org/protobuf/types/known/timestamppb"
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

	driver := &protos.Driver{IdNumber: uint32(dbDriver.ID), FirstName: dbDriver.FirstName, LastName: dbDriver.LastName, Email: dbDriver.Email, Phone: dbDriver.Phone, Sex: dbDriver.Sex, DateOfBirth: timestamppb.New(dbDriver.DateOfBirth), DateEmployed: timestamppb.New(dbDriver.DateEmployed), Comment: dbDriver.Comment, EvaluationReport: dbDriver.EvaluationReport, DriversLicence: dbDriver.DriversLicence}

	return driver, result.Error
}

func (s *BackendService) GetDrivers(payload *protos.DriverRequest, stream protos.BebaBackend_GetDriversServer) error {
	drivers := []*protos.Driver{
		{IdNumber: 6, FirstName: "George", LastName: "Ndirangu"},
		{IdNumber: 7, FirstName: "Ndisho", LastName: "Heyy"},
	}

	for _, driver := range drivers {

		if err := stream.Send(driver); err != nil {
			return err
		}
	}

	return nil

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
