FROM yantonov/anaconda3:2022.10

MAINTAINER Yury Antonov <1390348+yantonov@users.noreply.github.com>

RUN conda config --add channels conda-forge

RUN apt-get update && \
    # build-essential (gcc in particular) is required for twisted
    # cmake is required for multicoreTSNE
    apt-get install -y build-essential cmake && \
    apt-get clean

ADD files/* /
RUN pip install -r /requirements.txt

RUN jupyter contrib nbextension install
