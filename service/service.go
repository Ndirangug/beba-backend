package service

import (
	"context"
	"fmt"

	"github.com/ndirangug/tiny-erp-grpc/logger"
	"github.com/ndirangug/tiny-erp-grpc/protos"
)

// TestService implements  grpc methods auto-generated from .proto file
type TestService struct {
	logger *logger.ErpLogger
	protos.UnimplementedTinyErpGrpcServer
}

// TinyErpGrpc returns a new server
func TinyErpGrpc(logger *logger.ErpLogger) *TestService {
	return &TestService{logger: logger}
}

func (s *TestService) TestHello(ctx context.Context, request *protos.TestHelloRequest) (*protos.TestHelloResponse, error) {
	return &protos.TestHelloResponse{Response: fmt.Sprintf("Hello %s", request.Name)}, nil
}
