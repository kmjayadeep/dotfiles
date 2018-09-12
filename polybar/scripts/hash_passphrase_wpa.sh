#!/bin/bash

if [[ $1 == "" ]]; then
  echo "How to use: hash_passphrase_wpa.sh <passphrase>"
  echo "Only use for networks with identity!"
else
  echo -n $1 | iconv -t utf16le | openssl md4
fi
