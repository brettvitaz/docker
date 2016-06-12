#!/usr/bin/env bash

set -e

docker build -t jupyter-node:latest -t jupyter-node:v1.0 ./python/jupyter/node
