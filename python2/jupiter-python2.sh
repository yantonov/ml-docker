#!/bin/sh

export SRC="$(pwd)"

cd "$(dirname "$0")"

cd docker

COMMAND="${1:-lab}"

make "$COMMAND"
