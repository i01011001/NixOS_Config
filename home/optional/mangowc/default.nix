{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = [
    # mangowc
    inputs.mango.nixosModules.mango
  ];

  xdg.configFile."mango/config.conf".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/mangowc/config.conf;
}
