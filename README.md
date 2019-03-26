These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. [anaconda](https://anaconda.org/anaconda/python)
2. [catboost](https://github.com/catboost/catboost)
3. [gensim](https://radimrehurek.com/gensim/)
4. [jupiter](http://jupyter.org/)
5. [jupiterlab](https://jupyterlab.readthedocs.io/en/stable/)

Usage:  

Add 'python3', 'python2' directories of this repository to PATH variable.

Run jupiter notebook using python 3:
```bash
jupiter.sh notebook
```
Run jupiter notebook using python 2:
```bash
jupiter-python2.sh notebook
```

Run jupiter lab using python 3:
```bash
jupiter.sh
```
Run jupiter lab using python 2:
```bash
jupiter-python2.sh
```

After that you can connect to notebook at localhost:8888, current working directory will be mounted also.

Links:
1. [Anaconda docker files](https://github.com/ContinuumIO/docker-images)
2. [ml image at docker hub](https://hub.docker.com/r/yantonov/ml/)
3. [ml-python2 image at docker hub](https://hub.docker.com/r/yantonov/ml-python2/)
