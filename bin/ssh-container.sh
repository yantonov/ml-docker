#!/bin/sh

SCRIPT="$(basename "$0")"

IMAGE="${1}"

if [ -z "${IMAGE}" ]; then
    echo "Usage: ${SCRIPT} image-name"
    exit 0
fi

docker run --rm -t -i "${IMAGE}"
