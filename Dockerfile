FROM nvidia/cuda:9.2-cudnn7-devel-ubuntu18.04@sha256:6f04690715f680ebd43ee61ead408f9462a15b5abf32fd8f8cca22380064c3ca
MAINTAINER "Hidenori MATSUKI <matsuki.hidenori+docker@gmail.com>"

RUN : "" \
      && apt update && apt install -y --no-install-recommends curl git \
      && apt install -y --no-install-recommends python3-dev python3-pip \
      && pip3 install --upgrade pip \
      && hash -r pip3 \
      && pip3 install setuptools cython \
      && pip3 install numpy scipy pandas scikit-learn \
      && pip3 install jupyter \
      && pip3 install kaggle
