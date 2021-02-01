#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 6017f81d18f3b8567e38a68c

echo "stackbit-build.sh: finished build"
