{pkgs}:
pkgs.writeShellScriptBin "layout-left" ''
  riverctl send-layout-cmd wideriver "--layout left" &&
  riverctl map normal Super H focus-view left
''
