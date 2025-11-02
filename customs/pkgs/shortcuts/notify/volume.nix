{pkgs}:
pkgs.writeShellScriptBin "notifyvolume" ''notify-send "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d Volume: `"''
