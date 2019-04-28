#!/bin/bash

# Exit on error
set -e

echo "Running revive linter..."
revive ./...

echo "Running staticcheck linter..."
staticcheck ./...

echo "Running tests with race detector and saving coverage..."
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...
