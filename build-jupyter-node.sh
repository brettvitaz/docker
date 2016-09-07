#!/usr/bin/env bash

set -e

docker build $1 -t jupyter-node:latest -t jupyter-node:v1.0 -t sample/repo ./python/jupyter/node
