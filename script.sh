#!/bin/bash

# Exit on error
set -e

echo "Running linters..."
golangci-lint run

echo "Running tests with race detector and saving coverage..."
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...
