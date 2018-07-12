These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. [anaconda](https://anaconda.org/anaconda/python)
2. [gensim](https://radimrehurek.com/gensim/)
3. [bigartm](https://github.com/bigartm/bigartm)
4. [jupiter](http://jupyter.org/)
5. [pybrain](https://github.com/pybrain/pybrain)

Usage:  

Add 'python3', 'python2' directories of this repository to PATH variable.

For python 3:
```bash
jupiter-notebook.sh
```
For python 2:
```bash
jupiter-notebook-python2.sh
```
After that you can connect to notebook at localhost:8888, current working directory will be mounted also.

Links:
1. [Anaconda docker files](https://github.com/ContinuumIO/docker-images)
2. [ml-docker at docker hub](https://hub.docker.com/r/yantonov/ml-docker/)
3. [ml-docker-python2 at docker hub](https://hub.docker.com/r/yantonov/ml-docker-python2/)
