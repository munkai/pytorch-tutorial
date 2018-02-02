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

## Build image

```
docker build -t munkai/pytorch:cpu -f Dockerfile.cpu .
```

## Start container

```
docker run -it -p 8888:8888 -v `pwd`:/work munkai/pytorch:cpu ./jupyter_run.sh
```

## with CUDA

You need nvidia and cuda drivers installed along with `nvidia-docker`.
Also, build the image from the `Dockerfile.gpu`.

```
nvidia-docker run -it -p 8888:8888 -v `pwd`:/work munkai/pytorch:gpu ./jupyter_run.sh
```
