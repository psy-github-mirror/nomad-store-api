#!/usr/bin/env bash

# shellcheck disable=SC2154,SC2086
docker run \
  --log-driver=awslogs \
  --log-opt awslogs-group=docker-logs \
  --publish ${server_port}:${server_port} \
  --detach \
  --env SECRET_KEY='${SECRET_KEY}' \
  --env WEB_APP_URL='${WEB_APP_URL}' \
  --env WEB_HOOK_SECRET='${WEB_HOOK_SECRET}' \
  oxiixo/nomad-api
