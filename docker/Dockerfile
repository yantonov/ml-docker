FROM yantonov/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN conda config --add channels conda-forge

ADD files/conda_requirements.txt /
RUN conda install -y --file /conda_requirements.txt
ADD files/requirements.txt /
RUN pip install -r /requirements.txt

RUN jupyter contrib nbextension install
