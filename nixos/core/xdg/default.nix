{pkgs, ...}: {
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      wlr.enable = true;
      config = {
        common.default = ["gtk"];
      };
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
    };
  };

  # environment.systemPackages = with pkgs; [
  #   xdg-desktop-portal-gtk
  #   xdg-desktop-portal-wlr
  # ];
}
