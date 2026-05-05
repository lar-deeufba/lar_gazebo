#!/usr/bin/env bash
set -e

source /opt/ros/noetic/setup.bash

if [[ -f /ws/devel/setup.bash ]]; then
    source /ws/devel/setup.bash
fi

# Configura os acessórios do Husky definidos pelo próprio repositório, quando existirem.
if [[ -f /ws/src/lar_gazebo/husky_accessories.sh ]]; then
    source /ws/src/lar_gazebo/husky_accessories.sh || true
fi

# Garante que o Gazebo encontre os modelos do laboratório quando aberto via ROS ou diretamente.
if command -v rospack >/dev/null 2>&1 && rospack find lar_gazebo >/dev/null 2>&1; then
    LAR_GAZEBO_PATH="$(rospack find lar_gazebo)"
    export GAZEBO_MODEL_PATH="${LAR_GAZEBO_PATH}/models:${GAZEBO_MODEL_PATH:-}"
    export GAZEBO_RESOURCE_PATH="${LAR_GAZEBO_PATH}:${GAZEBO_RESOURCE_PATH:-}"
fi

exec "$@"
