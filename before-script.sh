#!/bin/bash

# Exit on error
set -e

# Linter
go get golang.org/x/lint/golint

# Megacheck
go get honnef.co/go/tools/cmd/staticcheck

# Cyclomatic complexity
go get github.com/fzipp/gocyclo

# Download test dependencies of the repository
go get -t -v ./...
