{pkgs, ...}: {

  home.packages = with pkgs; [
    grim
    slurp
  ];
  xdg.configFile."satty/config.toml".source = ./config.toml;
}
