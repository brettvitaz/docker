#!/usr/bin/env bash

set -e

docker build $1 -t python:latest -t python:v1.0 ./python
