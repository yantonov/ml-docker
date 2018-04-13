#!/bin/sh

export SRC="$(pwd)"

cd "$(dirname "$0")"

cd docker

make notebook
