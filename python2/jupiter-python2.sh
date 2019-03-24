#!/bin/sh

cd "$(dirname "$0")/docker"

COMMAND="${1:-lab}"

make "$COMMAND"
