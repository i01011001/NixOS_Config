{pkgs, ...}: {
  services.mako = {
    enable = true;
    # package = pkgs.mako_beta;
    # extraConfig = builtins.readFile ./config;

    settings = {
      max-visible = 5;
      sort = "-time";

      layer = "overlay";
      anchor = "top-right";

      font = "Iosevka Nerd Font Propo 10";
      background-color = "#131313";
      text-color = "#f0f0f0";
      width = 340;
      height = 100;
      margin = "7";
      border-size = 5;
      border-color = "#393939";
      border-radius = 7;
      progress-color = "#505050";
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
