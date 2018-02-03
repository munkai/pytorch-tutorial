# Credits

This repo is a collection or translation of popular deep learning projects and tutorials.

Amongst are

- [PyTorch Tutorial](https://github.com/pytorch/tutorials)
- [Technical University of Denmark's Deep Learning tutorial](https://github.com/DeepLearningDTU/02456-deep-learning)
- [Stanford's CS224 Deep Learning for NLP](http://cs224d.stanford.edu/)

# Prerequisites

Prerequisites for these tutorials are understanding of linear algebra and python.

**Estimated time for completion** 2 months

# Docker

See https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce on how to install `docker`.

## Build image

### CPU

```
docker build -t munkai/pytorch:cpu -f Dockerfile.cpu .
```

### GPU

Also available on dockerhub, so simply use the run command to fetch remote version.

```
docker build -t munkai/pytorch:gpu -f Dockerfile.gpu .
```

## Start container

```
docker run -it -p 8888:8888 -v `pwd`:/work munkai/pytorch:cpu ./jupyter_run.sh
```

## Running docker with a CUDA-enabled machine

You need Nvidia and nvidia-docker installed for this.

```
nvidia-docker run -it -p 8888:8888 -v `pwd`:/work munkai/pytorch:gpu ./jupyter_run.sh
```

### Install Nvidia

Make sure you have Nvidia's drivers installed for your system.
Following is install instructions for ubuntu 16.04

```
DISTRO=ubuntu
VERSION=1604
ARCH=x86_64
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/${DISTRO}${VERSION}/${ARCH}/7fa2af80.pub
sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/${DISTRO}${VERSION}/${ARCH}/" > /etc/apt/sources.list.d/cuda.list'
sudo apt-get update && sudo apt-get install -y --no-install-recommends cuda-drivers
```

### Install nvidia-docker

See https://github.com/NVIDIA/nvidia-docker on how to install `nvidia-docker`.
