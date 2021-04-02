generate:
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    protos/service.proto

reflect:
    grpcurl --plaintext localhost:50051 list




# test:
#     grpcurl --plaintext -d '{"idNumber": 1}'  localhost:50051 beba_backend.BebaBackend/GetDriver
#     grpcurl --plaintext -d '{"searchQuery": "KAG"}'  localhost:50051 beba_backend.BebaBackend/GetVehicles
#     grpcurl --plaintext -d '{"idNumber":2, "searchQuery": "geo"}'  localhost:50051 beba_backend.BebaBackend/GetDrivers
#   grpcurl --plaintext -d '{"searchQuery": "KAG 103Z"}'  localhost:50051 beba_backend.BebaBackend/GetVehicles
# grpcurl --plaintext -d '{"vehicleId":0, "driverId":null,"status": "scheduled"}'  localhost:50051 beba_backend.BebaBackend/GetTrips

