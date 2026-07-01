#!/bin/bash
set -e

PLATFORM="$1"
if [ -z "$PLATFORM" ]; then
    echo "Usage: docker run ... rb3dx-build <xbox|wii|ps3>"
    exit 1
fi

python dependencies/python/configure_build.py "$PLATFORM"
./dependencies/linux/ninja
