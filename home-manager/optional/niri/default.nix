{
  pkgs,
  config,
  ...
}: {
  # xdg.configFile."niri/config.kdl".source = ./config.kdl;
  home.packages = with pkgs; [
    niri
    gnome-keyring
    # xdg-desktop-portal-gnome
    # xdg-desktop-portal-gtk
    xwayland-satellite
    # libsecret
    # cage
    # gamescope
  ];

  xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/niri/config.kdl;
}
