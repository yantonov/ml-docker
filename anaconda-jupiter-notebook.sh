#!/bin/bash

SCRIPT_DIR=$(cd `dirname $0` && pwd)
cd $SCRIPT_DIR

SCRIPT=`basename $0`

if [ "$#" -lt 1 ]; then
    echo "usage: $SCRIPT <notebook_dir>"
    exit 0
fi

NOTEBOOK_LOCAL_DIR=$1

docker run -i -t \
       -p 8888:8888 \
       -v $NOTEBOOK_LOCAL_DIR:/opt/notebooks \
       --rm \
       continuumio/anaconda3 \
       /bin/bash -c \
       "useradd dev --create-home \
       && su - dev -c \"/opt/conda/bin/conda install jupyter -y --quiet \
       && /opt/conda/bin/jupyter notebook \
       --notebook-dir=/opt/notebooks \
       --ip='*' \
       --port=8888 \
       --no-browser\""
