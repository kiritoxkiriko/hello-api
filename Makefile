.PONY: ALL build run docker-build docker-push
BIN_DIR = bin

BUILDER=kiritoxkiriko

ALL: build

run:
	@go run main.go

build:
	@go build -o ${BIN_DIR}/hello .

docker-build:
	@docker buildx build -t ${BUILDER}/hello .

docker-push:
	@docker buildx build -t ${BUILDER}/hello --platform linux/amd64,linux/arm64,linux/i386,linux/arm --push .




