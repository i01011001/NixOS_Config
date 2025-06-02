{pkgs, ...}: {
  stylix = {
    enable = true;
    base16Scheme = {
      base08 = "bf656E"; #red
      base09 = "de9c6e"; #Orange
      base0A = "dbcc8c"; #yellow
      base0B = "83ad84"; #green
      base0C = "7dafac"; #cyan
      base0D = "6286ad"; #blue
      base0E = "a78eaf"; #magenta
      base0F = "8782af"; #violet
      base00 = "181818"; # ----
      base01 = "3c3c3c"; # ---
      base02 = "585858"; # --
      base03 = "757575"; # -
      base04 = "929292"; # +
      base05 = "a8a8a8"; # ++
      base06 = "c6c6c6"; # +++
      base07 = "e4e4e4"; # ++++
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
    opacity = {
      applications = 1.0;
      terminal = 1.0;
      desktop = 1.0;
      popups = 1.0;
    };
    polarity = "dark";

    targets = {
      neovim = {
        enable = true;
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
