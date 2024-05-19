#!/bin/bash

if [ "$1" == "install" ]; then
    podman run --pod pathproxy-pod --replace -d -v $HOME/dhRuVa/pathpool/nginx.conf:/etc/nginx/conf.d/default.conf:Z docker.io/library/nginx
elif [ "$1" == "stop" ]; then
    podman stop pathproxy-pod
elif [ "$1" == "start" ]; then
    podman start pathproxy-pod
else
    echo "Usage: $0 {install|stop|start}"
    exit 1
fi
