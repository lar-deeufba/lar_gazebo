#!/usr/bin/env bash
set -e

export USER_UID="$(id -u)"
export USER_GID="$(id -g)"
export USER_NAME="${USER:-ros}"

xhost +local:docker >/dev/null 2>&1 || true

# Passe hector_slam:=true se quiser ativar o Hector SLAM:
#   ./scripts/run_husky.sh hector_slam:=true

docker compose run --rm lar_gazebo roslaunch lar_gazebo lar_husky.launch "$@"
