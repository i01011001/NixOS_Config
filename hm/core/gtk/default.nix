{pkgs, ...}: {
  gtk = {
    enable = true;

    iconTheme = {
      package = pkgs.colloid-icon-theme;
      name = "Colloid-Dark";
    };
    # font = {
    #   name = "Iosevka Nerd Font Propo";
    #   size = 10;
    # };
    # theme = {
    #   # package = pkgs.flat-remix-gtk;
    #   # name = "Flat-Remix-GTK-Blue-Darkest";
    #   package = pkgs.colloid-gtk-theme.override {
    #     # themeVariants = ["blue"];
    #     colorVariants = ["dark"];
    #     sizeVariants = ["compact"];
    #     tweaks = ["float"];
    #   };
    #   name = "Colloid-Dark-Compact";
    # };
    # cursorTheme = {
    #   name = "phinger-cursors-dark";
    #   package = pkgs.phinger-cursors;
    #   size = 24;
    #   # package = pkgs.bibata-cursors;
    #   # name = "Bibata-Modern-Classic";
    #   # size = 16;
    # };
    # gtk3 = {
    #   extraCss = builtins.readFile ./gtk.css;
    #   extraConfig = {
    #     gtk-application-prefer-dark-theme = "1";
    #   };
    # };
    # gtk4 = {
    #   extraCss = builtins.readFile ./gtk.css;
    #   extraConfig = {
    #     gtk-application-prefer-dark-theme = "1";
    #   };
    # };
  };
}
