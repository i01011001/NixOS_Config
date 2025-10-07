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
      max-visible = 5;
      sort = "-time";

      layer = "overlay";
      anchor = "bottom-right";

      # font = "Iosevka Nerd Font Propo 10";
      # background-color = lib "#181818";
      # text-color = "#f0f0f0";
      width = 400;
      height = 100;
      margin = "10";
      outer-margin = "16, 6, 16, 6";
      border-size = 1;
      border-color = lib.mkForce "#404040";
      text-alignment= "center";
      # border-color = getColor colors.base03;
      border-radius = 6;
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
