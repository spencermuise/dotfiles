#!/usr/bin/env sh

# Terminate existing instance
pkill -f "jellyfin-mpv-shim"

# Wait until the processes have been shut down
while pgrep -f jellyfin-mpv-shim >/dev/null; do sleep 1; done

# launch Plex MPV Shim
jellyfin-mpv-shim > /dev/null 2>&1 &

