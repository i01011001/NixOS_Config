{ lib, ... }:
{
  imports = [
    ### core
    ./core/gtk
    ./core/fd
    ./core/fzf
    ./core/zsh
    ./core/git
    ./core/ripgrep

    ### optional
    ./optional/direnv
    ./optional/nixvim
    ./optional/cursor
    ./optional/yazi
    ./optional/btop
    ./optional/floorp
    ./optional/tofi
    ./optional/mako
    ./optional/swappy
    ./optional/foot
    ./optional/zathura
	# ./optional/vim
    # ./optional/river
    # ./optional/hypr
    # ./optional/alacritty
    # ./optional/ghostty
    # ./awesome
    # ./wezterm
    # ./sway
    # ./qutebrowser
  ];

  home = {
    username = "void";
  };

  # Enable home-manager
  programs.home-manager = {
    enable = true;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.11";
}
