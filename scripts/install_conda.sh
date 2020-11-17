#!/usr/bin/env bash

export CONDA_ENV_NAME=VIBE
echo $CONDA_ENV_NAME

conda create -n $CONDA_ENV_NAME python=3.7

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV_NAME

which python
which pip

conda install cudatoolkit=10.1 cudnn=7.6.0
pip install -c numpy==1.17.5 torch==1.4.0 torchvision==0.5.0 cudatoolkit=10.1
pip install git+https://github.com/giacaglia/pytube.git --upgrade
pip install -r requirements.txt
