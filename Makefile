# proxy:
# 	export PORT=8080 && \
# 	grpcwebproxy \
#     --backend_addr=beba-grpc-p2gh3d44pq-uc.a.run.app:443 \
#     --backend_tls_noverify \
#     --backend_tls=true   \
# 	--run_tls_server=false \
# 	--use_websockets \
# 	--allow_all_origins \
# 	--server_http_tls_port=${PORT} \
# 	--server_http_max_read_timeout=60s

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
	sudo service nginx start && \
	make postgres && \
	export PORT=50051 && \
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	go run main.go serve && \
	gnome-terminal -- make proxy

grpcui:
	go run main.go grpcui

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

reflect:
    grpcurl --plaintext localhost:50051 list

push_db:
	export DATABASE_URL="host=localhost user=beba_backend password=beba dbname=beba port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	heroku pg:push beba DATABASE_URL --app beba-backend

pg_credentials:
	heroku pg:credentials:url DATABASE --app beba-backend

test_cloud_run:
	grpcurl  beba-grpc-p2gh3d44pq-uc.a.run.app:443 list

# test:
#	https://beba-grpc-ui-p2gh3d44pq-uc.a.run.app grpcui
#	https://beba-grpc-web-proxy-p2gh3d44pq-uc.a.run.app grpcwebproxyy