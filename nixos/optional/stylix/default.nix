{
  pkgs,
  lib,
  inputs,
  ...
}: {
  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "121212"; # Darkest background (slightly darker)
      base01 = "212121"; # Dark background
      base02 = "303030"; # Secondary background
      base03 = "4E4E4E"; # Comments/secondary text
      base04 = "6D6D6D"; # Secondary text
      base05 = "C5C5C5"; # Primary text
      base06 = "E0E0E0"; # Bright text
      base07 = "FFFFFF"; # Lightest text
      base08 = "c4746e"; # Normal red
      base09 = "e46876"; # Bright red
      base0A = "c4b28a"; # Normal yellow
      base0B = "8a9a7b"; # Normal green
      base0C = "8ea4a2"; # Normal cyan
      base0D = "8ba4b0"; # Normal blue
      base0E = "a292a3"; # Normal magenta
      base0F = "b6927b"; # Indexed color 16
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic-Right";
      size = 16;
    };

    fonts = {
      serif = {
        package = pkgs.iosevka;
        name = "Iosevka Nerd Font Propo";
        # package = pkgs.nerd-fonts.terminess-ttf;
        # name = "Terminess Nerd Font Propo";
      };

      sansSerif = {
        package = pkgs.iosevka;
        name = "Iosevka Nerd Font Propo";
        # package = pkgs.nerd-fonts.terminess-ttf;
        # name = "Terminess Nerd Font Propo";
      };

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka NF Medium";
        # package = pkgs.nerd-fonts.terminess-ttf;
        # name = "Terminess Nerd Font";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 10;
        terminal = 10;
        desktop = 10;
        popups = 10;
      };
    };

    # iconTheme = {
    #   enable = true;
    #   package = pkgs.colloid-icon-theme;
    #   dark = "Colloid-Dark";
    # };

    opacity = {
      applications = 1.0;
      terminal = 1.0;
      desktop = 1.0;
      popups = 1.0;
    };

    polarity = "dark";

    targets = {
      grub.enable = false;
      # qt.enable = false;
    };

    # targets = {
    #   firefox = {
    #     enable = true;
    #     profileNames = ["i01011001"];
    #   };
    #   wezterm.enable = true;
    #   neovim = {
    #     enable = false;
    #     plugin = "mini.base16";
    #     transparentBackground = {
    #       main = true;
    #       numberLine = true;
    #       signColumn = true;
    #     };
    #   };
    # };
    # targets= {
    #     mako.enable = false;
    #     };
  };
}
