#!/bin/bash

docker run -i -t -p 8888:8888 continuumio/anaconda3 /bin/bash -c "useradd dev --create-home && mkdir /opt/notebooks && chown dev:dev /opt/notebooks && su - dev -c \"/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser\""
