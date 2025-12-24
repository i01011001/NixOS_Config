{
  pkgs,
  lib,
  config,
  ...
}: let
  colors = config.lib.stylix.colors;
  getColor = x: lib.mkForce "#${x}";
in {
  services.mako = {
    enable = true;
    # package = pkgs.mako_beta;
    # extraConfig = builtins.readFile ./config;

    settings = {
      max-visible = 3;
      sort = "-time";

      layer = "overlay";
      anchor = "bottom-center";

      font = lib.mkForce "Iosevka Nerd Font Propo 9";
      background-color = lib.mkForce "#000000";
      # text-color = "#f0f0f0";
      width = 340;
      height = 100;
      # margin = 0;
      outer-margin = "0, 0, 10";
      border-size = 0;
      # border-color = lib.mkForce "#404040";
      text-alignment = "center";
      # border-color = getColor colors.base03;
      # border-radius = 4;
      # progress-color = "#505050";
      icons = true;
      max-icon-size = 64;

      markup = true;
      actions = true;
      format = "<b>%s</b>\\n%b";
      default-timeout = 3600;
      ignore-timeout = false;
    };
  };
}
