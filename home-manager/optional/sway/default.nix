{
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Fixes common issues with GTK 3 apps
    extraConfig = builtins.readFile ./config;
  };
  # xdg.configFile."sway/config".source = ./config;
}
