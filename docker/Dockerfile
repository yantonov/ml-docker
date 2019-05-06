FROM yantonov/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN pip install --upgrade pip

# line below is needed to install catboost, jupiterlab
RUN conda config --add channels conda-forge

RUN conda update -c conda-forge conda

ADD files/conda_requirements.txt /
RUN conda install -y --file /conda_requirements.txt
ADD files/requirements.txt /
RUN pip install -r /requirements.txt
