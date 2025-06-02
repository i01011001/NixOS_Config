{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    config = {
      modifier = "Mod4";
      # Use kitty as default terminal
      terminal = "foot";
      bars = [];
      gaps = {
        outer = 3;
        inner = 3;
        };
      startup = [
      ];
    };
  };


  xdg.configFile."sway/config".source = ./config;
}
