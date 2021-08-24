# python3.6-torch-1.9.0

[Torch](https://pytorch.org/) 1.9.0 for Python 3.6 running on the Nvidia Jetson Tegra. Torch (a.k.a. pytorch) is an optimised [tensor](https://en.wikipedia.org/wiki/Tensor) library for GPUs and CPUs.

You may also want to check out [Qengineering/PyTorch-Jetson-Nano](https://github.com/Qengineering/PyTorch-Jetson-Nano) which also provides a wheel for torch.


## How to use

If you have `pip` (which should be run in a suitable virtual environment) this should work. Note you should probably install numpy as shown here:

```sh
pip install 'https://github.com/jetson-nano-wheels/python3.6-numpy-1.19.4/releases/download/v0.0.2/numpy-1.19.4-cp36-cp36m-linux_aarch64.whl'
wget \
    'https://nvidia.box.com/shared/static/h1z9sw4bb1ybi0rm3tu8qdj8hs05ljbm.whl' \
    -O /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl \
    && pip install /tmp/torch-1.9.0-cp36-cp36m-linux_aarch64.whl
```

If the wheel fails to download, or if Nvidia remove it, you may want to search for it online. There seems to be a few copies floating around.


## How to contribute

  1. [Fork this repo](https://github.com/jetson-nano-wheels/python3.6-torch-1.9.0/fork)
  2. Add a branch for your new feature.
  3. Run the `init.sh` script.

Like this:

```sh
git clone git@github.com:jetson-nano-wheels/python3.6-torch-1.9.0
cd python3.6-torch-1.9.0
git checkout -b feature-my-fancy-addition
./init.sh
```

After that, do your edits, commit and push to your repo, and send a pull-request if you like 😃
