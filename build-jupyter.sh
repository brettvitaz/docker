#!/usr/bin/env bash

set -e

docker build -t jupyter:latest -t jupyter:v1.0 ./python/jupyter
