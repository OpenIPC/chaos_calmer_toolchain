#!/usr/bin/env bash

TAG=`date -u +"%y%m%d"`
IMAGE="chaos_calmer_toolchain:$TAG "
docker build -t $IMAGE .

echo "Builded $IMAGE"
