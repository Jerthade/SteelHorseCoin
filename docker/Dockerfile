FROM debian:stretch
LABEL maintainer="SteelHorseCoin Developers <dev@steelhorsecoin.org>"
LABEL description="Dockerised SteelHorseCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
