all: .format

.PHONY: all

.format:
	go mod tidy
	golint ./...
	gofmt -w .
	goimports -w .
	go vet ./...
	go-imports
	gonote ./...
	go build .
	mv ./protoc-gen-trpc2grpc /Users/shaohui/Code/gopath/bin