{pkgs, ...}: {
  xdg = {
    autostart.enable = true;
    portal = {
      enable = true;
      wlr.enable = true; # Needed for xdg-desktop-portal-wlr
      xdgOpenUsePortal = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk # Helper for GTK/File chooser
      ];
      config = {
        common = {
          default = ["gtk"]; # Fallback to gtk for everything else
        };
        sway = {
          default = ["wlr" "gtk"]; # Prioritize wlr, fallback to gtk
          "org.freedesktop.impl.portal.FileChooser" = "gtk";
          # Use GTK for opening links
          "org.freedesktop.impl.portal.OpenURI" = "gtk";
          # Ensure wlr handles screen sharing
          "org.freedesktop.impl.portal.ScreenCast" = "wlr";
          "org.freedesktop.impl.portal.Screenshot" = "wlr";
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
