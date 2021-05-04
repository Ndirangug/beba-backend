package cmd

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"os"
	"os/signal"

	"github.com/fullstorydev/grpcui/standalone"
	"github.com/ndirangug/beba-backend/logger"
	"github.com/ndirangug/beba-backend/protos"
	"github.com/ndirangug/beba-backend/service"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

func Serve() {
	logger := logger.NewTinyLogger()

	port := os.Getenv("PORT")
	grpcuiPort := os.Getenv("GRPCUI_PORT")

	if port == "" {
		port = "8080"
		logger.Info("Defaulting to port %s", port)
	}

	if grpcuiPort == "" {
		grpcuiPort = "8081"
		logger.Info("Defaulting to grpcui port %s", grpcuiPort)
	}

	listener, err := net.Listen("tcp", fmt.Sprintf(":%s", port))
	if err != nil {
		logger.Panic("Failed to listen: %v", err)
	}

	testService := service.NewBackendService(logger)
	grpcServer := grpc.NewServer()
	protos.RegisterBebaBackendServer(grpcServer, testService)
	reflection.Register(grpcServer)

	go func() {
		logger.Info("Starting grpc server on addrress %s", listener.Addr().String())

		if err := grpcServer.Serve(listener); err != nil {
			logger.Panic("failed to serve: %v", err)
		}
	}()

	go func() {
		logger.Info("Adding grpc ui http handler on addrress %s", listener.Addr().String())

		// if err := grpcServer.Serve(listener); err != nil {
		// 	logger.Panic("failed to serve: %v", err)
		// }

		cc, err := grpc.Dial(listener.Addr().String(), grpc.WithInsecure())
		if err != nil {
			logger.Warn("failed to create client to local server for use with grpcui: %v", err)
		}

		// This one line of code is all that is needed to create the UI handler!
		h, err := standalone.HandlerViaReflection(context.TODO(), cc, listener.Addr().String())
		if err != nil {
			logger.Warn("failed to create client to local server: %v", err)
		}

		serveMux := http.NewServeMux()
		serveMux.Handle("/grpcui/", http.StripPrefix("/grpcui", h))

		if err := http.ListenAndServe(fmt.Sprintf(":%s", grpcuiPort), serveMux); err != nil {
			logger.Warn("Failed to start http listener for grpcui. Error %v", err)
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
