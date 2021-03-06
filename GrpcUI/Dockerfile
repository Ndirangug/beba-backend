# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START cloudrun_grpc_dockerfile]
# [START run_grpc_dockerfile]

# Use the offical golang image to create a binary.
# This is based on Debian and sets the GOPATH to /go.
# https://hub.docker.com/_/golang
FROM golang:1.16-buster as builder

# Create and change to the app directory.
WORKDIR /app
ENV GOPATH=/app

RUN go get github.com/fullstorydev/grpcui/... && \
    go install github.com/fullstorydev/grpcui/cmd/grpcui@latest

# Use the official Debian slim image for a lean production container.
# https://hub.docker.com/_/debian
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM debian:buster-slim
RUN set -x && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Copy the binary to the production image from the builder stage.
COPY --from=builder /app/bin/grpcui /grpcui

EXPOSE 8080/tcp
EXPOSE 8080/udp

# Run the web service on container startup.
CMD ["/grpcui", "-port", "$PORT", "-bind", "0.0.0.0", "beba-grpc-p2gh3d44pq-uc.a.run.app:443"]

# [END run_grpc_dockerfile]
# [END cloudrun_grpc_dockerfile]