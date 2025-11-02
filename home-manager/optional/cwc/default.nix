{
  pkgs,
  config,
  inputs,
  ...
}: {
  xdg.configFile."cwc/rc.lua".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/cwc/config/rc.lua;
  # xdg.configFile."niri-tag/config.toml".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/niri/config.toml;
}
