{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    grim
    satty
    slurp
  ];

  xdg.configFile."satty/config.toml".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/satty/config.toml;
}
