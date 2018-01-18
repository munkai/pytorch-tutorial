FROM conda/miniconda3

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN export CMAKE_PREFIX_PATH="$(dirname $(which conda))/../"
RUN conda install -y numpy pyyaml mkl setuptools cmake cffi
RUN conda install -y -c soumith magma-cuda80

RUN apt-get update -y && \
		apt-get install -y --no-install-recommends \
			git \
      build-essential \
		&& \
		apt-get clean && \
		rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/pytorch/pytorch /tmp/pytorch
RUN cd /tmp/pytorch && python setup.py install

RUN conda install -y torchvision -c pytorch
RUN conda install -y jupyter matplotlib

WORKDIR /work
CMD ["bash"]
