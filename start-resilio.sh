#!/bin/bash

DATA_FOLDER=/data/cloud
WEBUI_PORT=8888

mkdir -p $DATA_FOLDER

docker run -d --name Sync \
           -p 0.0.0.0:$WEBUI_PORT:8888 \
           -p 55555 \
           -v $DATA_FOLDER:/mnt/sync \
           --restart on-failure \
           rslsync