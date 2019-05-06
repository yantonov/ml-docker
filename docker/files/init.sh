#!/bin/sh

echo 'init'

. ./init-jupiter.sh

echo "execute $@"
$@
