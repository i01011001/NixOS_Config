{
  # pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    ### core
    # ./core/gtk
    ./core/fd
    ./core/fzf
    ./core/zsh
    ./core/git
    ./core/ripgrep
    ./core/qt
    ./core/xdg

    ### optional
    ./optional/direnv
    ./optional/tofi
    ./optional/mako
    ./optional/zathura
    ./optional/yazi
    ./optional/btop
    ./optional/stylix
    ./optional/neovim
    ./optional/foot
    ./optional/firefox
    ./optional/formatter
    ./optional/sway
    ./optional/flameshot

    ./optional/niri

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

  home.sessionVariables = {
    # NO_COLOR = "1";
  };

  home.stateVersion = "24.11";
}
