FROM yantonov/anaconda3:2020.02

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN conda config --add channels conda-forge

RUN apt-get update && \
    apt-get install -y \
    # required for twisted (gcc is required)
    build-essential \
    && \
    apt-get clean

ADD files/* /
RUN pip install -r /requirements.txt

RUN jupyter contrib nbextension install
