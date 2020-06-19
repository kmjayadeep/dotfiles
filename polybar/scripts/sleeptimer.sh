#!/bin/sh
# Shut down computer after x minutes [0<x<60]

setterm --powerdown $1
if [[ $1 == 0 ]]; then
  echo "- Sleeptimer disabled. Computer won't shut down. -"
else
  echo "- Computer will shut down after $1 minutes. -"
  echo "- Type 'sleeptimer.sh 0' to disable sleeptimer. -"
fi
