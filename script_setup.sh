# Written for Paperspace Gradient

. .env

## Base image

apt update && apt upgrade -y
apt-get install build-essential -y
apt-get install ffmpeg git p7zip-full -y

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

## Python

conda update -n base -c defaults conda -y
pip install --upgrade pip setuptools wheel

## Huggingface

. /storage/setup/huggingface.sh

# Deps

conda install cuda -c nvidia/label/cuda-11.8.0
pip install -r "/notebooks/requirements.txt"
cd "/notebooks/exllamav2"
CUDA_HOME=/usr/local/cuda-11.8 python setup.py install
