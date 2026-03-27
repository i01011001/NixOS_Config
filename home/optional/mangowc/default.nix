{
  pkgs,
  config,
  inputs,
  ...
}: {
     # inputs.mango.nixosModules.mango = 
     #          {
     #            programs.mango.enable = true;
     #          };
  home.packages = [
    # mangowc
  inputs.mango.packages.${pkgs.system}.default
  ];

  xdg.configFile."mango/config.conf".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/mangowc/config.conf;
}
