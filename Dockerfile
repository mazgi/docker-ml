FROM ubuntu:18.04

RUN : 'Install basic packages' \
  && apt update && apt install -y --no-install-recommends curl git \
  && : 'Install python3 packages' \
  && apt install -y --no-install-recommends python3-dev python3-pip \
  && pip3 install --upgrade pip && hash -r pip3 \
  && pip3 install setuptools cython \
  && : 'Install ML packages' \
  && pip3 install numpy scipy pandas scikit-learn \
  && : 'Install Jupyter Notebook' \
  && pip3 install jupyter \
  && : 'Install Kaggle CLI' \
  && pip3 install kaggle \
  && : 'End of installation process 🎉'
