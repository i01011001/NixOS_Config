{pkgs}:
pkgs.writeShellScriptBin "brightnessdown" ''brightnessctl set 1%-''
