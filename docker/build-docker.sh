#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-steelhorsecoinpay/steelhorsecoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/steelhorsecoind docker/bin/
cp $BUILD_DIR/src/steelhorsecoin-cli docker/bin/
cp $BUILD_DIR/src/steelhorsecoin-tx docker/bin/
strip docker/bin/steelhorsecoind
strip docker/bin/steelhorsecoin-cli
strip docker/bin/steelhorsecoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
