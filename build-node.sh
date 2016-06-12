#!/usr/bin/env bash

set -e

docker build -t node:latest -t node:v1.0 ./node
