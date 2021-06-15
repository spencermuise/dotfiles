#!/usr/bin/env sh

# Terminate existing instance
pkill -f "plex-mpv-shim"

# Wait until the processes have been shut down
while pgrep -f plex-mpv-shim >/dev/null; do sleep 1; done

# launch Plex MPV Shim
plex-mpv-shim > /dev/null 2>&1 &

