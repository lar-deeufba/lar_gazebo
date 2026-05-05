#!/usr/bin/env bash
set -e

export USER_UID="$(id -u)"
export USER_GID="$(id -g)"
export USER_NAME="${USER:-ros}"

# Executa o mundo pelo gazebo_ros sem interface gráfica.
# Útil para servidor, benchmark ou máquina sem X11.
docker compose run --rm lar_gazebo bash -lc \
  'roslaunch gazebo_ros empty_world.launch world_name:=$(rospack find lar_gazebo)/worlds/lar.world gui:=false paused:=false use_sim_time:=true'
