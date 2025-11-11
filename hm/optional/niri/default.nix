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
    xwayland-satellite
    libsecret
    cage
    gamescope
  ];

  xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/hm/optional/niri/config.kdl;
  # xdg.configFile."niri-tag/config.toml".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/niri/config.toml;
}
