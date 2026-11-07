GO            ?= go
GOLANGCI_LINT ?= $(GO) tool golangci-lint

.PHONY: run build test lint fmt

build:
	$(GO) build -v ./...

run:
	$(GO) run main.go

test:
	$(GO) test ./...

lint:
	$(GO) vet ./...
	$(GOLANGCI_LINT) run ./...

fmt:
	$(GOLANGCI_LINT) fmt ./...
