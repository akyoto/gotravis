#!/bin/bash

# Exit on error
set -e

# Run all the tests with the race detector enabled and save coverage results
echo "Running tests..."
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...

# Run the linters
echo "Running linters..."
golangci-lint run