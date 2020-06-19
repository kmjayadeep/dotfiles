#!/bin/bash
#xorgVars=`psgrep -a Xorg`
export DISPLAY=:0
export HOME="/home/`users | awk '{print $1}'`"
# Obtain the greeter cookie:
export XAUTHORITY=`ls /tmp/serverauth.*`

usermodmap=$HOME/.Xmodmap
sleep 1 # sleep to allow udev finish loading the keyboard first
setxkbmap -layout 'us(intl)'

if [ -f "$usermodmap" ]; then
    xmodmap -display $DISPLAY "$usermodmap"
fi

xmodmap -e 'clear Lock'

notify-send -u low "Keyboard mapped. Many joy. Such Umlaute. Wow!"
