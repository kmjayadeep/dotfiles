#!/bin/bash

#using the json interface from gpmdp
artist=$(jshon -e song -e artist < ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json)
title=$(jshon -e song -e title < ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json)
playing=$(jshon -e playing < ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json)

#some super simple string formatting
artist="${artist%\"}"
artist="${artist#\"}"
title="${title%\"}"
title="${title#\"}"

#display paused and playing status
if [ $playing == true ]
then
  echo  $artist - $title
else
  echo 
fi
