{pkgs}:
pkgs.writeShellScriptBin "layout-right" ''
  riverctl send-layout-cmd wideriver "--layout right" &&
  riverctl map normal Super H focus-view right
''
