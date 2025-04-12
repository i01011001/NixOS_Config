{
  pkgs ? import <nixpkgs> { },
}:
pkgs.writeShellScriptBin "capture_whole" ''grim -| swappy -f -''
