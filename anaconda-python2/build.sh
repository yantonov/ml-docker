#!/bin/sh

cd "$(dirname "$0")"

docker build -t my/anaconda-python2 .
