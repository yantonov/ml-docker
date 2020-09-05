These scripts help to use python machine learning libraries through docker images.

This is just a playground.   
For the specific task you may choose specific set of packages and create smaller image.

Docker file provides:

1. python 3
2. [anaconda](https://anaconda.org/anaconda/python)
3. [jupiter](http://jupyter.org/)
4. [jupiterlab](https://jupyterlab.readthedocs.io/en/stable/)

Some additional libraries:  
[Pip packages](https://github.com/yantonov/ml-docker/blob/master/docker/files/requirements.txt)  

Usage:  

Add repository to PATH variable (or create alias/shortcut for run.sh script).

Run jupiter notebook:
```bash
    run.sh notebook
```

Run jupiter lab:
```bash
    run.sh lab
    # or
    run.sh
```

After that you can connect to notebook at localhost:8888, current working directory will be mounted also.

Links:
1. [Docker hub](https://hub.docker.com/r/yantonov/ml/)
2. [Repository](https://github.com/yantonov/anaconda-docker) of the base image.
