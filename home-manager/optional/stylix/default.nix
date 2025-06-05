{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "#181818";
      base01 = "#282828";
      base02 = "#383838";
      base03 = "#585858";
      base04 = "#B8B8B8";
      base05 = "#D8D8D8";
      base06 = "#E8E8E8";
      base07 = "#F8F8F8";
      base08 = "#BF616A"; #red
      base09 = "#D08770"; #Orange
      base0A = "#EBCB8B"; #yellow
      base0B = "#A3BE8C"; #green
      base0C = "#88C0D0"; #cyan
      base0D = "#81A1C1"; #blue
      base0E = "#B48EAD"; #magenta
      base0F = "#5E81AC"; #violet
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
        name = "Iosevka Nerd Font Mono";
        # size = 10;
      };

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka Nerd Font Mono";
        # size = 10;
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
