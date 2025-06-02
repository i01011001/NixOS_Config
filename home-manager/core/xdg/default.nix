{pkgs, ...}: {
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      config = {
        common = {
          default = ["*"];
        };
      };
      extraPortals = [
        pkgs.xdg-desktop-portal-gnome
        pkgs.xdg-desktop-portal-gtk
      ];
    };

    # mimeApps = {
    #   enable = true;
    #   defaultApplications = {
    #     "inode/directory" = ["term_fm.desktop"];
    #   };
    # };
    #
    # desktopEntries = {
    #   term_fm = {
    #     name = "Terminal File Manager";
    #     genericName = "File Manager";
    #     exec = "foot -e ranger %U"; # Launch ranger in foot for directory handling
    #     terminal = false; # foot is a terminal emulator, no additional terminal needed
    #     mimeType = ["inode/directory"];
    #     type = "Application";
    #     categories = ["Utility;FileManager"]; # Semicolon-separated for desktop menu
    #   };
    # };
  };
}
