{pkgs, ...}: {
  xdg = {
    autostart.enable = true;
    portal = {
      enable = true;
      wlr.enable = true;
      xdgOpenUsePortal = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
        pkgs.xdg-desktop-portal-gnome
      ];
      config = {
        common = {
          default = "gtk";
        };
        niri = {
          default = "gtk";
          "org.freedesktop.impl.portal.FileChooser" = "gtk";
          "org.freedesktop.impl.portal.OpenURI" = "gnome";
        };
        hyprland = {
          default = "hyprland";
          "org.freedesktop.impl.portal.FileChooser" = "gtk";
          "org.freedesktop.impl.portal.OpenURI" = "gtk";
        };
      };
    };

    mime = {
      enable = true;

      defaultApplications = {
        # Browser (Firefox Nightly)
        "text/html" = "firefox-nightly.desktop";
        "x-scheme-handler/http" = "firefox-nightly.desktop";
        "x-scheme-handler/https" = "firefox-nightly.desktop";
        "x-scheme-handler/about" = "firefox-nightly.desktop";
        "x-scheme-handler/unknown" = "firefox-nightly.desktop";

        # File Manager
        "inode/directory" = "org.kde.dolphin.desktop";
        "inode/mount-point" = "org.kde.dolphin.desktop";

        # Text editor
        "text/plain" = "nvim.desktop";

        # Images
        "image/png" = "swayimg.desktop";
        "image/jpeg" = "swayimg.desktop";
        "image/jpg" = "swayimg.desktop";
        "image/webp" = "swayimg.desktop";
        "image/gif" = "swayimg.desktop";
        "image/svg+xml" = "swayimg.desktop";

        # Documents
        "application/pdf" = "org.pwmt.zathura.desktop";
        "application/epub+zip" = "org.pwmt.zathura.desktop";

        # Snapshot editor
        "image/x-xcf" = "satty.desktop";
        "image/x-portable-pixmap" = "satty.desktop";
        "image/x-portable-anymap" = "satty.desktop";
        "image/x-portable-bitmap" = "satty.desktop";
        "image/x-tga" = "satty.desktop";
      };
    };

    # desktopEntries = {
    #   term_fm = {
    #     name = "Terminal File Manager";
    #     genericName = "File Manager";
    #     exec = "foot -e yazi %U"; # Assuming `lf` is the terminal file manager
    #     terminal = true; # foot is a terminal; setting this true
    #     mimeType = ["inode/directory"];
    #     categories = ["Utility" "FileManager"];
    #   };
    # };
  };
}
