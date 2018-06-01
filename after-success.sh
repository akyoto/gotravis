#!/bin/bash

# Exit on error
set -e

# Upload coverage information to codecov.io
bash <(curl -s https://codecov.io/bash)