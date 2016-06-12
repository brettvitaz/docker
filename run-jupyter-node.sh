#!/usr/bin/env bash

set -e

./build-python.sh
./build-jupyter.sh
./build-jupyter-node.sh
docker run -d -p 8888:8888 --name jupyter-node jupyter-node
