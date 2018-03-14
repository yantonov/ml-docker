These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. [anaconda](https://github.com/pybrain/pybrain)
2. [jupiter](http://jupyter.org/)
3. [gensim](https://radimrehurek.com/gensim/)
4. [pybrain](https://github.com/pybrain/pybrain)
5. [bigartm](https://github.com/bigartm/bigartm)

Usage:  

Add 'python3', 'python2' directories of this repository to PATH variable.

Python3:
```bash
jupiter-notebook.sh [<working_directory>]
```
Python2:
```bash
jupiter-notebook-python2.sh [<working_directory>]
```
Unless otherwise specified, current working directory will be used.

After that you can connect to notebook at localhost:8888, given working directory will be mounted also.

Based on
[Anaconda docker files](https://github.com/ContinuumIO/docker-images)

Links to docker [hub](https://hub.docker.com)
1. [jupiter-python3 image](https://hub.docker.com/r/yantonov/jupiter-python3/)
2. [jupiter-python2 image](https://hub.docker.com/r/yantonov/jupiter-python2/)
