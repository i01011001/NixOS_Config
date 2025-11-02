{pkgs}:
pkgs.writeShellScriptBin "volumemute" ''wpctl set-mute @DEFAULT_SINK@ toggle''
