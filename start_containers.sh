#!/bin/sh

docker-compose up -d rabbit1 pgsql mongodb adminer
sleep 5s
docker-compose up patients doctors appointments web

