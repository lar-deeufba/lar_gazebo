#!/usr/bin/env bash
set -e

HOST_USER="${SUDO_USER:-${USER:-ros}}"

export USER_UID="$(id -u "${HOST_USER}")"
export USER_GID="$(id -g "${HOST_USER}")"
export USER_NAME="${HOST_USER}"

xhost +local:docker >/dev/null 2>&1 || true

docker compose run --rm lar_gazebo bash -i
