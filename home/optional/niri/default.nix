{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # niri
    inputs.niri.packages.${pkgs.system}.default
    wayland-utils
    gnome-keyring
    xwayland-satellite
    libsecret
    cage
    gamescope
  ];

  xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/niri/config.kdl;
}
