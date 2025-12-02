{
  pkgs,
  config,
  ...
}: {
  services.flameshot = {
    enable = true;
    package = pkgs.flameshot.override {
      enableWlrSupport = true;
      enableMonochromeIcon = true;
    };
  };
  xdg.configFile."flameshot/flameshot.ini".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/flameshot/flameshot.ini;
}
