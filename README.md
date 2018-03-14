These scripts help to use python machine learning libraries through docker images.

Docker file provides:
1. anaconda
2. jupiter
3. gensim
4. pybrain

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
