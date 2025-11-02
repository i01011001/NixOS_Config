{pkgs ? import <nixpkgs> {}}:
pkgs.writeShellScriptBin "notifytime" ''notify-send  "`date +%H:%M`" "`date +%A` `date +%d`. `date +%B`"''
