#!/bin/sh

# docker volume create portainer_data
docker run -d \
  -p 127.0.0.1:9443:9000 \
  --name portainer \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/portainer-data:/data \
  portainer/portainer-ce:2.19.4-alpine

# password: 98hd8938h_HIUDjoidjowp
