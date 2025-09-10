#!/bin/bash
docker rm -f $(docker ps -aq)
docker volume prune -a
docker system prune -a
