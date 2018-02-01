FROM continuumio/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN /opt/conda/bin/conda update conda -y && \
    /opt/conda/bin/conda install jupyter -y && \
    /opt/conda/bin/pip install https://github.com/pybrain/pybrain/archive/0.3.3.zip
