#!/bin/bash

# Create a list of all the .go files, excluding vendor/
export GO_FILES=$(find . -iname '*.go' -type f | grep -v /vendor/)

# Linter
go get github.com/golang/lint/golint

# Megacheck
go get honnef.co/go/tools/cmd/megacheck

# Cyclomatic complexity
go get github.com/fzipp/gocyclo

# Download test dependencies of the repository
go get -t -v ./...