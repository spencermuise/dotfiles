#!/usr/bin/env sh

# Terminate already running instances
killall -q ckb-next

# Wait until the processes have been shut down
while pgrep -x ckb-next >/dev/null; do sleep 1; done

# Launch ckb-next
ckb-next -b &
