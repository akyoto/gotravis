#!/bin/bash

# Exit on error
set -e

# Linter
go get github.com/golang/lint/golint

# Megacheck
go get honnef.co/go/tools/cmd/megacheck

# Cyclomatic complexity
go get github.com/fzipp/gocyclo

# Download test dependencies of the repository
go get -t -v ./...