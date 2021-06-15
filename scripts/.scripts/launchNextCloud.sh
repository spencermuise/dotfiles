#!/usr/bin/env sh
# check if nextcloud is already running & start if it is not.
pidof nextcloud >/dev/null
if [[ $? -ne 0 ]] ; then
  echo "Starting Nextcloud"
  nextcloud --background &
fi
