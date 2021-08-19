#!/bin/bash

# Fortunately Nvidia have provided some Torch wheels for Python 3.6 at
# https://forums.developer.nvidia.com/t/pytorch-for-jetson-version-1-9-0-now-available/72048
# I've simply copied the relevant one here. If you want to install Nvidia's original, do this:
# 
# wget 'https://nvidia.box.com/shared/static/h1z9sw4bb1ybi0rm3tu8qdj8hs05ljbm.whl' -O /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl \
#     && pip install /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl


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
pip install 'https://github.com/jetson-nano-wheels/python3.6-numpy-1.19.4/releases/download/v0.0.1/numpy-1.19.4-cp36-cp36m-linux_aarch64.whl'

# This is a bit silly. This repo simply provides a mirror
# for the Nvidia wheels mentioned above. But this will keep
# the URLs predictable for all artifacts in the jetson-nano-wheels org.
pip install 'https://github.com/jetson-nano-wheels/python3.6-torch-1.9.0/releases/download/v0.0.1/torch-1.9.0-cp36-cp36m-linux_aarch64.whl'
