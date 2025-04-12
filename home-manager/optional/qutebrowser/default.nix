{
  programs.qutebrowser = {
    enable = true;
    extraConfig = builtins.readFile ./config.py;
  };
  xdg.configFile = {
    "qutebrowser/extra" = {
      source = ./extra;
      recursive = true;
    };
  };

}
