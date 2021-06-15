#!/bin/bash

# Terminate already running instances
killall -q xsettingsd 

# Wait until the processes have been shut down
while pgrep -x xsettingssd >/dev/null; do sleep 1; done

# Launch ckb-next
xsettingsd &
