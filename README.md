These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. [anaconda](https://anaconda.org/anaconda/python)
2. [catboost](https://github.com/catboost/catboost)
3. [jupiter](http://jupyter.org/)
4. [jupiterlab](https://jupyterlab.readthedocs.io/en/stable/)

Usage:  

Add  repository to PATH variable.

Run jupiter notebook using python 3:
```bash
jupiter.sh notebook
```

Run jupiter lab using python 3:
```bash
jupiter.sh
```

After that you can connect to notebook at localhost:8888, current working directory will be mounted also.

Links:
1. [Anaconda docker files](https://github.com/ContinuumIO/docker-images)
2. [ml image at docker hub](https://hub.docker.com/r/yantonov/ml/)
