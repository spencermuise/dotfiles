#!/bin/bash

# Kill all existing Picom instances
killall -q picom

# Wait til picom is dead
while pgrep -x picom >/dev/null; do sleep 1; done

# Launch picom
picom --experimental-backends --backend glx --config /home/smuise/.config/picom/config
