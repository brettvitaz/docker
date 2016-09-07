#!/usr/bin/env bash

set -e

docker build $1 -t node:latest -t node:v1.0 ./node
