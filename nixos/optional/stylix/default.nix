{
  pkgs,
  inputs,
  ...
}: {

  stylix = {
    enable = true;
    base16Scheme = {
      base00 = "161616"; # Background (very dark gray)
      base01 = "040404"; # Normal black
      base02 = "292929"; # Bright black (slightly lighter)
      base03 = "3d3d3d"; # Selection background
      base04 = "BEBEBE"; # Selection foreground (light gray)
      base05 = "C5C5C5"; # Foreground (light gray)
      base06 = "D5D5D5"; # Normal white (near white)
      base07 = "E5E5E5"; # Bright white (true white-ish)
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
      };

      sansSerif = {
        package = pkgs.iosevka;
        name = "Iosevka Nerd Font Propo";
      };

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka Nerd Font Mono";
      };

      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      sizes = {
        applications = 9;
        terminal = 9;
        desktop = 9;
        popups = 9;
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

