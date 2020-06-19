#!/bin/bash

rm ~/pictures/wallpaper/active/*
cp $1 ~/pictures/wallpaper/active/
setDisplays.sh right
