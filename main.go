package main

import (
	"os"

	"github.com/ndirangug/beba-backend/cmd"
)

func main() {
	args := os.Args

	switch args[1] { // ignore index 0 as that is the path to the file being executed
	case "serve":
		cmd.Serve()
	case "migrate":
		cmd.Migrate()
	case "seed":
		cmd.Seed()
	case "grpcui":
		cmd.Grpcui()
	default:
		println("argument 'serve', 'seed' or 'migrate' or 'grpcui' expected")

	}
}
