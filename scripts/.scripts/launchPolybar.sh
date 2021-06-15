#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
# Bar is the name set in the polybar config, so if you change it, you have to change it here too.
sleep 2;
polybar left -c ~/.config/polybar/config.ini &
polybar centre -c ~/.config/polybar/config.ini &
polybar right -c ~/.config/polybar/config.ini &
echo "Bars launched..."
