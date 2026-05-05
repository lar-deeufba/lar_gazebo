#!/usr/bin/env bash
set -e

HOST_USER="${SUDO_USER:-${USER:-ros}}"

export USER_UID="$(id -u "${HOST_USER}")"
export USER_GID="$(id -g "${HOST_USER}")"
export USER_NAME="${HOST_USER}"

docker compose build
