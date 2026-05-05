#!/usr/bin/env bash
set -e

export USER_UID="$(id -u)"
export USER_GID="$(id -g)"
export USER_NAME="${USER:-ros}"

xhost +local:docker >/dev/null 2>&1 || true

docker compose run --rm lar_gazebo roslaunch lar_gazebo lar_world.launch
