#!/bin/bash
sudo pkill wpa_supplicant
sudo pkill dhcpcd
sudo dhcpcd enp2s0f0 -b
echo "- LAN Connection established. -"
