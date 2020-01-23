#!/bin/bash
set -ex

docker run --rm \
    -ti \
    --env=USER_UID="$(id -u)" \
    --env=USER_GID="$(id -g)" \
    --env=DISPLAY="unix$DISPLAY" \
    --device /dev/dri \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v "/run/user/$(id -u)/pulse:/run/pulse:ro" \
    -v "$HOME/.themes:/usr/share/themes:ro" \
    -v /usr/share/icons/:/usr/share/icons/:ro \
    -v /etc/localtime:/etc/localtime:ro \
	--shm-size 2G \
    --name firefox$RANDOM \
    firefox "$@"

# -v "$HOME/mozilla:/home/firefox/.mozilla" \
