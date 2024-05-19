#!/bin/bash

if [ "$1" == "install" ]; then
    podman run --name pathpool --pod pathproxy-pod --replace -d -v $HOME/dhRuVa/pathpool/src:/var/www/html:Z -v $HOME/dhRuVa/pathpool/nginx.conf:/etc/nginx/conf.d/default.conf:Z docker.io/library/nginx
elif [ "$1" == "stop" ]; then
    podman stop pathpool
elif [ "$1" == "start" ]; then
    podman start pathpool
else
    echo "Usage: $0 {install|stop|start}"
    exit 1
fi
