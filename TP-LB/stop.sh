#!/bin/bash

# Arrêter et supprimer tous les conteneurs
for c in nginx1 nginx2 nginx-lb; do
    docker stop $c 2>/dev/null || true
    docker rm $c 2>/dev/null || true
done

# Supprimer le réseau
docker network rm tplb 2>/dev/null || true
