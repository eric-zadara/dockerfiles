FROM docker.io/library/ubuntu:18.04
RUN \
  apt-get update -y && \
  apt-get install -y \
    git \
    build-essential \
    python-pip \
    python-netaddr \
    libpcre3 \
    libpcre3-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/python2.7"]
