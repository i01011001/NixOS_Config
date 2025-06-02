{
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    ### core
    ./core/gtk
    ./core/fd
    ./core/fzf
    ./core/zsh
    ./core/git
    ./core/ripgrep
    ./core/xdg

    ### optional
    ./optional/direnv
    # ./optional/cursor
    ./optional/tofi
    ./optional/mako
    ./optional/zathura
    ./optional/foot
    ./optional/firefox
    ./optional/yazi
    ./optional/btop
    ./optional/satty
    ./optional/niri
    ./optional/stylix
    ./optional/neovim
    # ./optional/gbar
    # ./optional/sway
    # ./optional/flameshot
    # ./optional/i3
    # ./optional/xdg
    # ./optional/hypr
    ./optional/alacritty
    # ./optional/nixvim
  ];

  home = {
    username = "i01011001";
    # packages = [
    #   (import ../nixos/optional/nixcat/default.nix {
    #     inherit pkgs;
    #     inherit (inputs) nixCats;
    #   })
    # ];
  };

  # Enable home-manager
  programs.home-manager = {
    enable = true;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.11";
}
