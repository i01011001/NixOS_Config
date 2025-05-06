{
  pkgs ? import <nixpkgs> { },
}:
pkgs.writeShellScriptBin "capture_whole" ''flameshot gui -p ~/media/images/screenshots/ -r | wl-copy''
