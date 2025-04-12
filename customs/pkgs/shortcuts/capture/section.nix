{
  pkgs ? import <nixpkgs> { },
}:
pkgs.writeShellScriptBin "capture_section" ''grim -g "$(slurp)" -| swappy -f -''
