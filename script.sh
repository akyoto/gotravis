#!/bin/bash

# Exit on error
set -e

# Run the linters
golangci-lint run

# Run all the tests with the race detector enabled and save coverage results
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...