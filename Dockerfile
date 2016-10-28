FROM postgres:latest
RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  python \
  python-dev \
  software-properties-common \
  unzip \
  && \
  apt-get clean && \
  git-core /
  rm -rf /var/lib/apt/lists/*


RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
  python get-pip.py && \
  rm get-pip.py


RUN mkdir projects
RUN cd projects
RUN git clone https://github.com/dragonchain/dragonchain.git
