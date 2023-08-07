#!/usr/bin/env bash

# wait for docker
until docker version > /dev/null 2>&1
do
  sleep 1
done

# start docker-compose
cd /workspaces/test && docker-compose up -d