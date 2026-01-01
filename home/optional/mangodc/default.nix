{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    mangowc
  ];

  xdg.configFile."mango/config.conf".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/mangodc/config.conf;
}
