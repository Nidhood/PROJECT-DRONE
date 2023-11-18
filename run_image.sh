#!/usr/bin/bash
xhost +local:docker
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -



docker compose -f deployment/docker-compose.yml build
docker compose -f deployment/docker-compose.yml up -d
docker container exec -it deployment-ros-1 /bin/bash