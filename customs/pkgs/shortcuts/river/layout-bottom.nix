{pkgs}:
pkgs.writeShellScriptBin "layout-bottom" ''
  riverctl send-layout-cmd wideriver "--layout bottom" &&
  riverctl map normal Super H focus-view down
''
