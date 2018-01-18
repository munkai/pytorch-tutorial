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
docker build -t munk/pytorch -f Dockerfile .
```

## Start container

```
docker run -it -p 8888:8888 -v `pwd`:/work munk/pytorch bash
```
