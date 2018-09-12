#!/usr/bin/env bash

THRESHOLD=10 # percent

lock_path='/tmp/batmon.lock'

acpi_path=$(find /sys/class/power_supply/ -name 'BAT*' | head -1)
charge_now=$(cat "$acpi_path/charge_now")
charge_full=$(cat "$acpi_path/charge_full")
charge_status=$(cat "$acpi_path/status")
charge_percent=$(printf '%.0f' $(echo "$charge_now / $charge_full * 100" | bc -l))
message="Battery running critically low at $charge_percent%!"

if [[ $charge_status == 'Discharging' ]] && [[ $charge_percent -le $THRESHOLD ]]; then
  DISPLAY=:0.0 /usr/bin/notify-send -u critical "Low battery" "$message"
fi
