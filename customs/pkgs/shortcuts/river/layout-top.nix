{
  pkgs,
}:
pkgs.writeShellScriptBin "layout-top" ''
  riverctl send-layout-cmd wideriver "--layout top" &&
  riverctl map normal Super H focus-view up
''
