#!/usr/bin/env bash

set -e

docker build $1 -t jupyter:latest -t jupyter:v1.0 ./python/jupyter
