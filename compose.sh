#!/usr/bin/env bash

HOST="0.0.0.0"
PORT="42069"

podman-compose -f docker-compose.yml down

podman-compose -f docker-compose.yml up --build -d --build-arg HOST=$HOST --build-arg PORT=$PORT
