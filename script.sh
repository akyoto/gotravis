#!/bin/bash

# Exit on error
set -e

# Run the revive linter
echo "Running revive linter..."
revive ./...

# Run the staticcheck linter
echo "Running staticcheck linter..."
staticcheck ./...

# Run all the tests with the race detector enabled and save coverage results
echo "Running tests..."
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...
