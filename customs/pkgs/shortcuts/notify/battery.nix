{
  pkgs,
}:
pkgs.writeShellScriptBin "notifybattery" ''notify-send "Capacity" "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)`"''
