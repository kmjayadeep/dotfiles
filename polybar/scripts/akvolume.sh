#!/bin/bash

if [[ $1 == '' ]]; then
  echo "Input between 0 and 100 expected. "
else
  pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo $1%
  notify-send -t 2 -u low 'volume set to' $1
fi
