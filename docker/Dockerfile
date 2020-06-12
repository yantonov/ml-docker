FROM yantonov/anaconda3

MAINTAINER Yury Antonov <yantonov@yandex.ru>

RUN conda config --add channels conda-forge

ADD files/* /
RUN pip install -r /requirements.txt

RUN jupyter contrib nbextension install
