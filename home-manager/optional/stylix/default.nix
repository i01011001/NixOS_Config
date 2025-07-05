{
  pkgs,
  lib,
  ...
}: {
  stylix = {
    enable = true;
    iconTheme = {
      enable = true;
      package = pkgs.colloid-icon-theme;
      dark = "Colloid-Dark";
    };

    targets = {
      # firefox = {
      #   enable = true;
      #   profileNames = ["i01011001"];
      # };
      # wezterm.enable = true;
      neovim = {
        enable = false;
        plugin = "mini.base16";
        transparentBackground = {
          main = true;
          numberLine = false;
          signColumn = false;
        };
      };
    };
  };
}
