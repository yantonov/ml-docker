#!/usr/bin/env sh

pip install piprot

piprot /requirements.txt | grep -v 'up to date'
