#!/bin/bash
if [[ $1 == '' ]]; then
  echo "Input expected. Default is 1.0"
else
  xrandr --output HDMI1 --brightness $1
fi

