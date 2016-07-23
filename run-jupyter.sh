#!/usr/bin/env bash

set -e

./build-python.sh
./build-jupyter.sh
docker run -d -p 8888:8888 --name jupyter ${1:+-v $1:/notebook }jupyter
