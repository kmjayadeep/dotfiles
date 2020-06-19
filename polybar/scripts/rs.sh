#!/bin/sh

if [[ $1 == "on" ]]; then
  pkill redshift
  redshift -l 55.4:7.8 -t 5700:3000 -g 0.8 -m randr &
elif [[ $1 == "dark" ]]; then
  pkill redshift
  redshift -l 55.4:7.8 -t 5700:3000 -g 0.8 -b 0.7:0.7 -m randr &
elif [[ $1 == "off" ]]; then
  redshift -x
  pkill redshift
else
  echo "Allowed inputs are 'on' and 'off'."
  exit 1
fi
