{
  config,
  lib,
  ...
}: {
  xdg.configFile."foot/foot.ini".source =
    lib.mkForce (config.lib.file.mkOutOfStoreSymlink "/etc/nixos/home/optional/foot/foot.ini");

  programs.foot.enable = true;
}
