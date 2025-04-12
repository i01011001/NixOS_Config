{ pkgs, ... }:
{
  services.mako = {
    enable = true;
    # package = pkgs.mako_beta;
    extraConfig = builtins.readFile ./config;
  };

}
