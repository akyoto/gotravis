#!/bin/bash

# Exit on error
set -e

# Enable Go modules
export GO111MODULE=on

# Use a fixed version of golangci-lint to get reproducible tests
GOLANGCILINTVERSION=1.16.0

# Install golangci-lint
echo "Installing golangci-lint..."
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v$GOLANGCILINTVERSION

# Build dependencies
echo "Building dependencies..."
go get -t -v ./...
