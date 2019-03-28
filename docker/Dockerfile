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

ENV R_USER someuser
ENV R_GROUP someuser

RUN groupadd -r $R_GROUP && \
    useradd -m -s /bin/bash -g $R_GROUP $R_USER && \
    mkdir -p /opt/notebooks && \
    chown $R_USER /opt/notebooks

USER $R_USER

ENV JUPITER_PORT 8888
RUN jupyter notebook --generate-config

# jupiter configuration
RUN echo "c.NotebookApp.ip = '*'"               >> /home/$R_USER/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.port = ${JUPITER_PORT}" >> /home/$R_USER/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.token = ''"             >> /home/$R_USER/.jupyter/jupyter_notebook_config.py
