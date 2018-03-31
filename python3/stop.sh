#!/bin/sh

docker stop $(docker ps -a --filter 'ancestor=yantonov/jupiter-python3' --format '{{.ID}}')
