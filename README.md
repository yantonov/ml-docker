These scripts help to use python machine learning libraries through docker images.

Docker file provides:

1. python 3
2. [anaconda](https://anaconda.org/anaconda/python)
3. [catboost](https://github.com/catboost/catboost)
4. [jupiter](http://jupyter.org/)
5. [jupiterlab](https://jupyterlab.readthedocs.io/en/stable/)
6. [pyplot_express](https://www.plotly.express/)
6. [spacy](https://spacy.io)

Usage:  

Add  repository to PATH variable.

Run jupiter notebook:
```bash
jupiter.sh notebook
```

Run jupiter lab:
```bash
jupiter.sh
```

After that you can connect to notebook at localhost:8888, current working directory will be mounted also.

Links:
1. [ml image at docker hub](https://hub.docker.com/r/yantonov/ml/)
