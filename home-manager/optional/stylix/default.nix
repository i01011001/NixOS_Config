{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "181616";
      base01 = "0d0c0c";
      base02 = "2d4f67";
      base03 = "a6a69c";
      base04 = "7fb4ca";
      base05 = "c5c9c5";
      base06 = "938aa9";
      base07 = "c5c9c5";
      base08 = "c4746e";
      base09 = "e46876";
      base0A = "c4b28a";
      base0B = "8a9a7b";
      base0C = "8ea4a2";
      base0D = "8ba4b0";
      base0E = "a292a3";
      base0F = "7aa89f";
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic-Right";
      size = 24;
    };

    fonts = {
      serif = {
        package = pkgs.iosevka;
        name = "Iosevka Nerd Font Propo";
        # size = 10;
      };

      sansSerif = {
        package = pkgs.iosevka;
        name = "Iosevka Nerd Font Propo";
        # size = 10;
      };

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka Nerd Font Mono";
        # size = 9;
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 10;
        terminal = 10;
        desktop = 10;
        popups = 10;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.colloid-icon-theme;
      dark = "Colloid-Dark";
    };

    opacity = {
      applications = 1.0;
      terminal = 1.0;
      desktop = 1.0;
      popups = 1.0;
    };

    polarity = "dark";

    targets = {
      firefox = {
        enable = true;
        profileNames = ["i01011001"];
      };
      wezterm.enable = true;
      neovim = {
        enable = false;
        plugin = "mini.base16";
        transparentBackground = {
          main = true;
          numberLine = true;
          signColumn = true;
        };
      };
    };
    # targets= {
    #     mako.enable = false;
    #     };
  };
}
