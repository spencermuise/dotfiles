#!/bin/bash

# Kill all existing Compton instances
killall -q compton

# Wait til compton is dead
while pgrep -x compton >/dev/null; do sleep 1; done

# Launch compton
compton --config /home/smuise/.config/compton/config
