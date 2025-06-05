{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # (inputs.niri.packages.x86_64-linux.niri)
    wayland-utils
    gnome-keyring
    xwayland-satellite-unstable
    libsecret
    cage
    gamescope
  ];

  xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/niri/config.kdl;
}
