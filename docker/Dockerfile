FROM yantonov/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN /opt/conda/bin/pip install --upgrade pip

# line below is needed to install catboost, jupiterlab
RUN /opt/conda/bin/conda config --add channels conda-forge

RUN /opt/conda/bin/conda update -c conda-forge conda

ADD conda_requirements.txt /
RUN /opt/conda/bin/conda install -y --file conda_requirements.txt
ADD requirements.txt /
RUN /opt/conda/bin/pip install -r requirements.txt

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
