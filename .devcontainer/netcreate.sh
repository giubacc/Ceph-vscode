#!/bin/bash

if docker network ls | grep "ceph-vscode"; then
  echo "network ceph-vscode already exists, nothing to do"
else
  echo "network ceph-vscode doesn't exist, creating ..."
  docker network create --driver=bridge --attachable --subnet=10.21.67.0/24 ceph-vscode
fi
