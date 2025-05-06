{pkgs, ...}: {
  services.mako = {
    enable = true;
    # package = pkgs.mako_beta;
    # extraConfig = builtins.readFile ./config;

    maxVisible = 5;
    sort = "-time";

    layer = "overlay";
    anchor = "top-right";

    font = "Iosevka Nerd Font Propo 10";
    backgroundColor = "#000000";
    textColor = "#f0f0f0";
    width = 340;
    height = 100;
    margin = "0";
    borderSize = 1;
    borderColor = "#464646";
    # borderRadius = 4;
    borderRadius = 0;
    progressColor = "#464646";
    icons = true;
    maxIconSize = 64;

    markup = true;
    actions = true;
    format = "<b>%s</b>\\n%b";
    defaultTimeout = 3600;
    ignoreTimeout = false;
  };
}
