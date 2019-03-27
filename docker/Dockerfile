FROM continuumio/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN /opt/conda/bin/pip install --upgrade pip && \
    /opt/conda/bin/conda update conda -y && \
    # line below is needed to install catboost, jupiterlab
    /opt/conda/bin/conda config --add channels conda-forge && \
    /opt/conda/bin/conda install catboost -y && \
    /opt/conda/bin/conda install jupyter -y && \
    /opt/conda/bin/conda install jupyterlab -y && \
    /opt/conda/bin/conda install scrapy -y && \
    /opt/conda/bin/pip install plotly_express

ENV CUSER someuser

RUN useradd -m -s /bin/bash -N $CUSER && \
    mkdir -p /opt/notebooks && \
    chown $CUSER /opt/notebooks

USER $CUSER
