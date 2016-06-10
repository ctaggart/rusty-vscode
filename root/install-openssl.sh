#!/bin/sh -e
# https://packages.debian.org/jessie/libssl-dev 
export DEBIAN_FRONTEND=noninteractive
apt-get install -y libssl-dev

# or build it from source like
# https://github.com/liuchong/docker-rustup/blob/master/dockerfiles/stable/Dockerfile
#SSL_VERSION=1.0.2h
#RUN curl https://www.openssl.org/source/openssl-$SSL_VERSION.tar.gz -O && \
#    tar -xzf openssl-$SSL_VERSION.tar.gz && \
#    cd openssl-$SSL_VERSION && ./config && make depend && make install && \
#    cd .. && rm -rf openssl-$SSL_VERSION*

# Add to Dockerfile:
#ENV OPENSSL_LIB_DIR=/usr/local/ssl/lib \
#    OPENSSL_INCLUDE_DIR=/usr/local/ssl/include \
#    OPENSSL_STATIC=1
