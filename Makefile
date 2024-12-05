# Variables
BINARY_NAME = bin/gp
MAIN_FILE = ./cmd/main.go

# Commandes
build:
	@echo "Building the application..."
	@cd ./cmd && go build -o ../$(BINARY_NAME)

run: build
	@echo "Running the application..."
	@./$(BINARY_NAME)

test:
	@echo "Running tests..."
	@go test -v ./...

clean:
	@echo "Cleaning up..."
	@rm -rf bin/*
