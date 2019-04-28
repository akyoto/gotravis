#!/bin/bash

# Exit on error
set -e

# Use a fixed version of golangci-lint to get reproducible tests
LINTER_VERSION=1.16.0

echo "Installing golangci-lint..."
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v$LINTER_VERSION

echo "Building dependencies..."
go get -t -v ./...
