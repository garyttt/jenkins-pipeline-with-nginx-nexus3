#!/bin/bash -e

./stop_all.sh
docker-compose up -d 

. ~/.install/functions >/dev/null 2>&1
docker_ip nginx
docker_ip nexus3
docker_ip jenkins
docker_ip jkagent01
docker_ip jkagent02

docker logs -f jenkins

