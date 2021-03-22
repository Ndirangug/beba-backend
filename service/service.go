package service

import (
	"context"
	"fmt"

	"github.com/ndirangug/beba-backend/logger"
	"github.com/ndirangug/beba-backend/protos"
)

// Backend implements  grpc methods auto-generated from .proto file
type BackendService struct {
	logger *logger.TinyLogger
	protos.UnimplementedBebaBackendServer
}

// TinyErpGrpc returns a new server
func NewBackendService(logger *logger.TinyLogger) *BackendService {
	return &BackendService{logger: logger}
}

func (s *BackendService) TestHello(ctx context.Context, request *protos.TestHelloRequest) (*protos.TestHelloResponse, error) {
	return &protos.TestHelloResponse{Response: fmt.Sprintf("Hello %s", request.Name)}, nil
}

func (s *BackendService) GetDrivers(payload *protos.DriverRequest, stream protos.BebaBackend_GetDriversServer) error {
	drivers := []*protos.Driver{
		{IdNumber: "6", FirstName: "George", LastName: "Ndirangu"},
		{IdNumber: "7", FirstName: "Ndisho", LastName: "Heyy"},
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
