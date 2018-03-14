These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. [anaconda](https://github.com/pybrain/pybrain)
2. [jupiter](http://jupyter.org/)
3. [gensim](https://radimrehurek.com/gensim/)
4. [pybrain](https://github.com/pybrain/pybrain)
5. [bigartm](https://github.com/bigartm/bigartm)

Usage:  

Build image:  
```bash
build.sh
```

Use anaconda, other libraries with jupiter notebooks:  
```bash
jupiter-notebook.sh [<working_directory>]
```
Unless otherwise specified, current working directory will be used.

After that you can connect to notebook at localhost:8888, given working directory will be mounted also.

For easy of use it, you can add 'python3', 'python2' directories of this repository to PATH variable.

[Anaconda docker files](https://github.com/ContinuumIO/docker-images)
