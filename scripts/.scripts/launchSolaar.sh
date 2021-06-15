#!/usr/bin/env sh

# Terminate existing instance
pkill -f "solaar"

# Wait until the processes have been shut down
while pgrep -f solaar >/dev/null; do sleep 1; done

# launch Solaar 
solaar -w hide > /dev/null 2>&1 &

