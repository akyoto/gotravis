#!/bin/bash

# Exit on error
set -e

# Use a fixed version of golangci-lint to get reproducible tests
GOLANGCILINTVERSION=1.16.0

# Install golangci-lint
curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b $(go env GOPATH)/bin v$GOLANGCILINTVERSION

# Download dependencies
go mod download
