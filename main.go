wpackage main

import (
	"net"
	"os"
	"os/signal"

	"github.com/ndirangug/tiny-erp-grpc/logger"
	"github.com/ndirangug/tiny-erp-grpc/protos"
	"github.com/ndirangug/tiny-erp-grpc/service"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

const (
	port = ":50051"
)

func main() {
	logger := logger.NewErpLogger()

	listener, err := net.Listen("tcp", port)
	if err != nil {
		logger.Panic("Failed to listen: %v", err)
	}

	testService := service.TinyErpGrpc(logger)
	grpcServer := grpc.NewServer()
	protos.RegisterTinyErpGrpcServer(grpcServer, testService)
	reflection.Register(grpcServer)

	go func() {
		logger.Info("Starting server on addrress %s", listener.Addr().String())

		if err := grpcServer.Serve(listener); err != nil {
			logger.Panic("failed to serve: %v", err)
		}
	}()

	// trap sigterm or interupt and gracefully shutdown the server
	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt)
	signal.Notify(c, os.Kill)

	// Block until a signal is received.
	sig := <-c
	logger.Info("Got signal: %v. Exiting...", sig)
	grpcServer.GracefulStop()

}
