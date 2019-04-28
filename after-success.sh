#!/bin/bash

# Exit on error
set -e

echo "Uploading coverage information to codecov.io..."
bash <(curl -s https://codecov.io/bash)