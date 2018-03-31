#!/bin/sh

docker stop $(docker ps -a --filter 'ancestor=yantonov/jupiter-python2' --format '{{.ID}}')
