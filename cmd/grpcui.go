package cmd

import (
	"context"
	"fmt"
	"net/http"
	"os"

	"github.com/fullstorydev/grpcui/standalone"
	"github.com/ndirangug/beba-backend/logger"
	"google.golang.org/grpc"
)

func Grpcui() {
	go func() {
		logger := logger.NewTinyLogger()

		port := os.Getenv("PORT")

		if port == "" {
			port = "8080"
			logger.Info("Defaulting to port %s", port)
		}

		logger.Info("Adding grpc ui http handler on addrress")

		// if err := grpcServer.Serve(listener); err != nil {
		// 	logger.Panic("failed to serve: %v", err)
		// }

		cc, err := grpc.Dial("beba-grpc-p2gh3d44pq-uc.a.run.app:443", grpc.WithInsecure())
		if err != nil {
			logger.Warn("failed to create client to local server for use with grpcui: %v", err)
		}

		// This one line of code is all that is needed to create the UI handler!
		h, err := standalone.HandlerViaReflection(context.TODO(), cc, "beba-grpc-p2gh3d44pq-uc.a.run.app:443")
		if err != nil {
			logger.Warn("failed to create client to local server: %v", err)
		}

		serveMux := http.NewServeMux()
		serveMux.Handle("/grpcui/", http.StripPrefix("/grpcui", h))

		logger.Info("Starting http listener on address :%s/grpcui", port)
		if err := http.ListenAndServe(fmt.Sprintf(":%s", port), serveMux); err != nil {
			logger.Warn("Failed to start http listener for grpcui. Error %v", err)
		}

	}()
}
