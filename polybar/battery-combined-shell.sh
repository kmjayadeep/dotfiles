#!/bin/sh

path_ac="/sys/class/power_supply/ACAD"
path_battery="/sys/class/power_supply/BAT1"

ac=0
battery_level=0
battery_max=0

if [ -f "$path_ac/online" ]; then
    ac=$(cat "$path_ac/online")
fi

if [ -f "$path_battery/charge_now" ]; then
    battery_level=$(cat "$path_battery/charge_now")
fi

if [ -f "$path_battery/charge_full" ]; then
    battery_max=$(cat "$path_battery/charge_full")
fi

battery_percent=$(("$battery_level * 100"))
battery_percent=$(("$battery_percent / $battery_max"))

if [ "$ac" -eq 1 ]; then
    icon="\ue23a"

    if [ "$battery_percent" -gt 97 ]; then
        echo -e "$icon"
    else
        echo -e "$icon $battery_percent %"
    fi
else
    if [ "$battery_percent" -gt 85 ]; then
        icon="\ue253"
    elif [ "$battery_percent" -gt 70 ]; then
        icon="\ue250"
    elif [ "$battery_percent" -gt 50 ]; then
        icon="\ue24f"
    elif [ "$battery_percent" -gt 35 ]; then
        icon="\ue24d"
    elif [ "$battery_percent" -gt 10 ]; then
        icon="\ue24c"
    else
        icon="\ue242"
    fi

    echo -e "$icon $battery_percent %"
fi
