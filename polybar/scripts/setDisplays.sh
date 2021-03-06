#!/bin/bash
WALLPAPER=~/pictures/wallpaper/active/*

if [[ $1 != "wallpaper" ]]; then
  # grep for connected displays and cut at first whitespace.
  # This returns the display identifier:
  foundDisplays=(`xrandr -q | grep " connected" | cut -f1 -d ' '`)
  foundDisplaysLength=${#foundDisplays[*]}
  if [[ ${foundDisplaysLength} > 1 ]]; then
    for ((index=0; index<${foundDisplaysLength}; index++)); do
      currentDisplay=${foundDisplays[${index}]}

      # determine preferred resolution (which normally is the max resolution):
      preferredResolutions=(`xrandr -q | grep -E "( |\*)\+" | cut -f4 -d ' '`)
#      preferredResolutions=(`xrandr -q | grep -E "[[:digit:]]x[[:digit:]].*[[:digit:]]\.[[:digit:]]( |\*)\+" | cut -f4 -d ' '`)

      # set display name and preferred resolution to variables:
      case "${currentDisplay}" in
      LVDS*)
        LVDS=${currentDisplay}
        resolutionLVDS="${preferredResolutions[${index}]}"
        ;;
      HDMI*)
        HDMI=${currentDisplay}
        resolutionHDMI="${preferredResolutions[${index}]}"
        #resolutionHDMI=3440x1440 #hotfix for broad screen at work
        ;;
      VGA*)
        VGA=${currentDisplay}
        resolutionVGA="${preferredResolutions[${index}]}"
        ;;
      esac
    done

    # if there is a VGA monitor, connect it with LVDS and set it left or right of it
    if [[ -n "$VGA" ]]; then
      position=$1
      if [ ${position} != "right" ]; then
        position="left"
      fi
      xrandr --output ${LVDS} --mode ${resolutionLVDS} --primary --output ${VGA} --mode ${resolutionVGA} --${position}-of ${LVDS}

    # else connect HDMI and set LVDS "on" or off
    else
      xrandrCommand="xrandr --output ${HDMI} --mode ${resolutionHDMI} --primary"
      if [[ $1 == "right" ]]; then
        ${xrandrCommand} --output ${LVDS} --right-of ${HDMI} --mode ${resolutionLVDS}
      elif [[ $1 == "left" ]]; then
        # calculate x-position of HDMI to be 2px off the left to circumvent an X11-bug:
        position=`echo ${resolutionLVDS} | cut -f1 -d 'x'`
        let "position = ${position} + 2"
        ${xrandrCommand} --pos ${position}x2 --output ${LVDS} --mode ${resolutionLVDS}
      else
        # shortly activate IGD for turning on laptop display backlight:
        # source $HOME/.i3/scripts/setGraphics.sh
        # setGraphics ON > /dev/null
        # setGraphics OFF > /dev/null
        ${xrandrCommand} --output ${LVDS} --off
      fi
    fi
  fi
fi

# set wallpaper and suppress and error/warning messages (e.g. about color profiles):
feh --bg-fill ${WALLPAPER} > /dev/null 2>&1

# reload polybar for scaling
~/dotfiles/polybar/launch.sh
# load keyboard map in case of usb keyboard (happens regularly)
loadKeyboardLayout.sh

notify-send -u low 'Display(s) set.'
