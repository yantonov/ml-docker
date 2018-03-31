#!/bin/sh

function get_working_dir {
    if [ "$#" -lt 1 ]; then
        NOTEBOOK_LOCAL_DIR=`pwd`
    else
        if [ -d "$1" ];
        then
            NOTEBOOK_LOCAL_DIR=$1
        else
            NOTEBOOK_LOCAL_DIR=`pwd`
        fi
    fi
    echo "${NOTEBOOK_LOCAL_DIR}"
}

function run_jupiter {
    NOTEBOOK_LOCAL_DIR="${1}"

    IMAGE="${2}"

    docker run -i -t \
           -p 8888:8888 \
           -v "${NOTEBOOK_LOCAL_DIR}:/opt/notebooks" \
           --rm \
           "${IMAGE}" \
           /bin/bash -c \
           "useradd dev --create-home \
       && su - dev -c \"/opt/conda/bin/jupyter notebook \
       --notebook-dir=/opt/notebooks \
       --ip='*' \
       --port=8888 \
       --no-browser\""
}
