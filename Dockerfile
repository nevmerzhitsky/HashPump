FROM ubuntu:16.04
LABEL maintainer="sergey.nevmerzhitsky@gmail.com"

WORKDIR /tmp/HashPump/

RUN set -ex; \
    apt-get update; \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        build-essential \
        g++ \
        git \
        libssl-dev
COPY . .
RUN set -ex; \
    make; \
    make install

ENTRYPOINT ["hashpump"]
