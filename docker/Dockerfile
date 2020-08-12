FROM yantonov/anaconda3:2020.07

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN conda config --add channels conda-forge

RUN apt-get update && \
    # required for twisted (gcc is required)
    apt-get install -y build-essential && \
    apt-get clean

ADD files/* /
RUN pip install -r /requirements.txt

RUN jupyter contrib nbextension install
