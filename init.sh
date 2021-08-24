#!/bin/bash

# Fortunately Nvidia have provided some Torch wheels for Python 3.6 at
# https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-9-0-now-available/72048

# You may need to `apt install` any/all of the following:
# cuda-documentation-10-2 cuda-gdb-10-2 cuda-libraries-10-2 cuda-libraries-dev-10-2 cuda-nvcc-10-2 cuda-toolkit-10-2 cuda-tools-10-2
# libcublas-dev libcublas10
# libopenblas-base libopenmpi-dev
# nvidia-jetpack 

if [[ "x${VIRTUAL_ENV}" == "x" ]] ; then
    python3.6 -m venv venv
fi

source venv/bin/activate

echo "Updating build toolset."
pip install --upgrade pip==21.2.4 setuptools==57.4.0 wheel==0.37.0

echo "Installing known version of numpy."
pip install 'https://github.com/jetson-nano-wheels/python3.6-numpy-1.19.4/releases/download/v0.0.2/numpy-1.19.4-cp36-cp36m-linux_aarch64.whl'

# The binary is too large for Github which currently has a 100 MB limit
# https://docs.github.com/en/github/managing-large-files/working-with-large-files/conditions-for-large-files
# so it can't be hosted on Github. For now, simply download Nvidia's
# file from box.com. I'm currently seeding a bittorrent of this file
# since I don't like relying on one single host!

wget \
    'https://nvidia.box.com/shared/static/h1z9sw4bb1ybi0rm3tu8qdj8hs05ljbm.whl' \
    -O /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl \
    && pip install /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl
