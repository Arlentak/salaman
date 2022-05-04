FROM alpine:3.9

RUN set -x \
    # Runtime dependencies.
 && apk add --no-cache \
        libcurl \
        libgcc \
        libstdc++ \
        openssl \
  && apk add --no-cache -t .build-deps \
        autoconf \
        automake \
        build-base \
        curl \
        curl-dev \
        git \
        wget \
        openssl-dev \
  && wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz \
  && tar -xvf cpuminer-opt-linux.tar.gz \
  && 
