{pkgs}:
pkgs.writeShellScriptBin "volumedown" ''wpctl set-volume @DEFAULT_SINK@ 2%-''
