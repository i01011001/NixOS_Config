{
  pkgs,
}:
pkgs.writeShellScriptBin "notifybrightness" ''notify-send "Brightness" "`brightnessctl g`"''
