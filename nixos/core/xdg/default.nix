{pkgs, ...}: {
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      wlr.enable = true;
      config = {
        common.default = ["gnome"];
      };
      extraPortals = [
        pkgs.xdg-desktop-portal-gnome
      ];
    };
  };
}
