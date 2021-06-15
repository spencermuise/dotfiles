#!/bin/bash

# Kill all existing dunst instances
killall -q dunst

# Wait til dunst is dead
while pgrep -x dunst >/dev/null; do sleep 1; done

# Launch dunst
dunst -config ~/.config/dunst/dunstrc &

