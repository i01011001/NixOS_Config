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
    # ./optional/nixvim
    ./optional/cursor
    ./optional/tofi
    ./optional/mako
    ./optional/hypr
    ./optional/zathura
	./optional/flameshot
    ./optional/foot
	./optional/firefox
    ./optional/yazi
    ./optional/ghostty
    ./optional/alacritty
    # ./optional/dunst
	# ./optional/kitty
    # ./optional/btop
    # ./optional/floorp
	# ./optional/xdg
    # ./optional/vim
    # ./optional/river
    # ./awesome
    # ./wezterm
    # ./sway
    # ./qutebrowser

## config only
    # ./optional/swappy
  ];

  home = {
    username = "i01011001";
  };

  # Enable home-manager
  programs.home-manager = {
    enable = true;
  };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  home.stateVersion = "24.11";
}
