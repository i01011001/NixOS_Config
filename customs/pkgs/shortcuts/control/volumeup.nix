{pkgs}:
pkgs.writeShellScriptBin "volumeup" ''wpctl set-volume @DEFAULT_SINK@ 2%+''
