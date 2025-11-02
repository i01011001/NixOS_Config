{
  # pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    ### core
    # ./core/gtk
    # ./core/xdg
    ./core/fd
    ./core/fzf
    ./core/zsh
    ./core/git
    ./core/ripgrep
    ./core/qt

    ### optional
    ./optional/direnv
    ./optional/tofi
    ./optional/mako
    ./optional/zathura
    ./optional/yazi
    ./optional/btop
    ./optional/satty
    ./optional/stylix
    ./optional/neovim
    ./optional/foot
    ./optional/firefox
    ./optional/niri
    ./optional/formatter
    # ./optional/cwc
    # ./optional/conky
    # ./optional/hypr
    # ./optional/floorp
    # ./optional/brave
    # ./optional/river
    # ./optional/fnott
    # ./optional/wezterm
    # ./optional/alacritty
    # ./optional/waybar
    # ./optional/cursor
    # ./optional/gbar
    # ./optional/sway
    # ./optional/flameshot
    # ./optional/i3
    # ./optional/xdg
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
