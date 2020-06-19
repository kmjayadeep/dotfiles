#!/bin/bash
sudo rfkill unblock 0
sudo rfkill unblock 1
sudo pkill wpa_supplicant
sudo pkill dhcpcd
sudo wpa_supplicant -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf -B
sudo dhcpcd -b
notify-send -u low "Wifi-Connection established."
