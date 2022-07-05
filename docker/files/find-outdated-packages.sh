#!/usr/bin/env sh

pip install piprot

echo 'List of packages to update:'
echo '---'
piprot /requirements.txt | grep -v 'up to date'
echo '---'
