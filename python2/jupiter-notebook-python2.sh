#!/bin/sh

SCRIPT="$(basename "$0")"

if [ "$#" -eq 1 ]; then
     if [ "$1" == "--help" || "$1" == "-h" || "$1" == "help" ]; then
         echo "Usage: ${SCRIPT} [<working dir>]";
         echo -e "\tunless otherwise specified, current working dir will be used by default"
         exit 0;
     fi
fi

cd "$(dirname "$0")"

source ../bin/jupiter-notebook-helpers.sh

NOTEBOOK_LOCAL_DIR=$(get_working_dir "$@")

run_jupiter "${NOTEBOOK_LOCAL_DIR}" "yantonov/jupiter-python2"
