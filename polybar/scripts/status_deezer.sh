#!/bin/bash

string="$(jshon -e windows -a -e tabs -a -e entries -a -e url -u -p -e title -u <~/.mozilla/firefox/2mtu7xq9.default/sessionstore-backups/recovery.js | grep -A1 www.deezer.com | tail -1)"


echo ${string//"\""/"\`"}
