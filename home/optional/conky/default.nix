{
  lib,
  config,
  ...
}: {
  services.conky = {
    enable = true;
  };
  xdg.configFile."conky/conky.conf".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/conky/conky.conf;
}
