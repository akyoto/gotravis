#!/bin/bash

# Exit on error
set -e

echo "Installing revive..."
go get -u github.com/mgechev/revive

echo "Installing staticcheck..."
go get -u honnef.co/go/tools/cmd/staticcheck

echo "Building dependencies..."
go get -t -v ./...
