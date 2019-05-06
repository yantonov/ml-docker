FROM yantonov/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN pip install --upgrade pip

# line below is needed to install catboost, jupiterlab
RUN conda config --add channels conda-forge

RUN conda update -c conda-forge conda

ADD conda_requirements.txt /
RUN conda install -y --file conda_requirements.txt
ADD requirements.txt /
RUN pip install -r requirements.txt

ENV JUPITER_PORT 8888
RUN jupyter notebook --generate-config

# jupiter configuration
RUN echo "c.NotebookApp.ip = '*'"               >> /home/${MY_USER}/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.port = ${JUPITER_PORT}" >> /home/${MY_USER}/.jupyter/jupyter_notebook_config.py
RUN echo "c.NotebookApp.token = ''"             >> /home/${MY_USER}/.jupyter/jupyter_notebook_config.py
