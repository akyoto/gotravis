#!/bin/bash

# Exit on error
set -e

# Run all the tests with the race detector enabled and save coverage results
go test -v -race -coverprofile=coverage.txt -covermode=atomic ./...

# Run the official Go static analyzer
go vet ./...

# Run megacheck, one of the best linters out there
megacheck ./...

# Forbid code with huge functions (high cyclomatic complexity)
#gocyclo -over 19 $(find . -iname '*.go' -type f | grep -v /vendor/)

# Run one last linter
golint -set_exit_status $(go list ./...)