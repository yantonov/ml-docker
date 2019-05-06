#!/bin/sh

# TODO: add conditional initialization that depends on environment variables for example

jupyter notebook --generate-config

# jupiter configuration
echo "c.NotebookApp.ip = '*'"               >> ${HOME}/.jupyter/jupyter_notebook_config.py
# echo "c.NotebookApp.port = 8888" >> ${HOME}/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.token = ''"             >> ${HOME}/.jupyter/jupyter_notebook_config.py
