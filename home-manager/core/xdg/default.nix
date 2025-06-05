{pkgs, ...}: {
  xdg = {
    # portal = {
    #   enable = true;
    #   xdgOpenUsePortal = true;
    #   config = {
    #     common = {
    #       default = [
    #         "gnome"
    #         "gtk"
    #       ];
    #       "org.freedesktop.impl.portal.Secret" = [
    #         "gnome-keyring"
    #       ];
    #     };
    #   };
    #   extraPortals = [
    #     pkgs.xdg-desktop-portal-gnome
    #     pkgs.xdg-desktop-portal-gtk
    #   ];
    # };

    mimeApps = {
      enable = true;
      defaultApplications = {
        "inode/directory" = ["term_fm.desktop"];
      };
    };

    desktopEntries = {
      term_fm = {
        name = "Terminal File Manager";
        genericName = "File Manager";
        exec = "foot -e yazi %U"; # Assuming `lf` is the terminal file manager
        terminal = true; # foot is a terminal; setting this true
        mimeType = ["inode/directory"];
        categories = ["Utility" "FileManager"];
      };
    };
  };
}
