proxy:
	grpcwebproxy \
    --backend_addr=localhost:50051 \
    --backend_tls_noverify \
	--run_tls_server=false \
	--use_websockets \
	--allow_all_origins \
	--server_http_max_read_timeout=60s

postgres:
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	sudo service postgresql start

serve:
	make postgres && \
	export PORT=:50051 && \
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	go run main.go serve && \
	gnome-terminal -- make proxy

seed:
	make postgres && \
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	go run main.go seed

migrate:
	make postgres && \
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	go run main.go migrate

generate:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative protos/service.proto


# reflect:
#     grpcurl --plaintext localhost:50051 list

# push_db:
# 	heroku pg:push vets DATABASE_URL --app vets-backend

# pg_credentials:
# 	heroku pg:credentials:url DATABASE --app vets-backend


# test:
#     grpcurl --plaintext -d '{"idNumber":4, "searchQuery":"ndirangu"}'  localhost:50051 beba_backend.BebaBackend.GetDrivers
#     
#	grpcurl  vet-backend-fybfguvuua-uc.a.run.app:50051 list
#	grpcui  vet-backend-fybfguvuua-uc.a.run.app:50051
