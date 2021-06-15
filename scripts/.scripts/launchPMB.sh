#!/usr/bin/env sh

# Terminate existing instance
pkill -f "protonmail-bridge --no-window"

# Wait until the processes have been shut down
while pgrep -f protonmail-bridge >/dev/null; do sleep 1; done

# launch pmb
protonmail-bridge --no-window &

