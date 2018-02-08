# Most complete PyTorch and NLP tutorial in existence

This repo is a remix of the most popular online courses starting from applied deep learning and increasingly moving into more theoretical content with a pytorch translation of Stanford NLP's CS224d 2017 course.
This course is a natural extension of fast.ai's 2018 deep learning tutorial.
Lastly, the tutorial encompasses the AllenNLP library for building advanced deep learning systems and researching in NLP.

Amongst courses where content is remixed are

- [PyTorch Tutorial](https://github.com/pytorch/tutorials)
- [Technical University of Denmark's Deep Learning tutorial](https://github.com/DeepLearningDTU/02456-deep-learning)
- [Stanford's CS224 Deep Learning for NLP](http://cs224d.stanford.edu/)

**Estimated time for completion of all content, given prerequisites are satisfied** 2 months (full time).

# Prerequisites

Prerequisites for these tutorials are understanding of linear algebra and python.
If you do not understand linear algegbra, we recommend either

## Linear Algebra

1. Crash course (often sufficient for engineers)
   - Andrew Ng's [linear algebra crash course](https://www.coursera.org/learn/machine-learning/lecture/38jIT/matrices-and-vectors).
   Watch all the videos, which should be around an hour total.
2. Thorough introduction (recommended for researchers)
   - [Khan Academy's Precalculus](https://www.khanacademy.org/math/precalculus)
     - note, if you do not have prerequisites for the precalculus, you can start from scratch with Khan Academy
   - [Single Variable Calculus](https://ocw.mit.edu/courses/mathematics/18-01sc-single-variable-calculus-fall-2010/)
   - [Multivariable Calculus](https://ocw.mit.edu/courses/mathematics/18-02sc-multivariable-calculus-fall-2010/)
   - [Linear Algebra](https://ocw.mit.edu/courses/mathematics/18-06sc-linear-algebra-fall-2011/)

Going through the thorough introduction to linear algebra from scratch is about 2 months (full time).
The crash course should take about 1 day to complete.

## Python

1. Crash course
   - https://learnxinyminutes.com/docs/python3/
   - https://www.codecademy.com/learn/learn-python
2. Thorough introduction
   - [Introduction to Computer Science and Programming in Python](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-0001-introduction-to-computer-science-and-programming-in-python-fall-2016/)
   - [Introduction to Algorithms](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-006-introduction-to-algorithms-fall-2011/)

Going through the thorough introduction to computer science from scratch is about 1 month (full time).
The crash course should take about 1 day to complete.

# Docker

To run the labs we will use Docker, which is ellaborated below.

See https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce on how to install `docker`.

## Build image

### CPU

```
docker build -t munkai/pytorch:cpu -f Dockerfile.cpu .
```

### GPU

Also available on dockerhub, so simply use the `docker run` command to fetch remote version.

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
