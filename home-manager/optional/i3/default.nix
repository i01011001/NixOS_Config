{pkgs, ...}: {
  #in configuration.nix
  # services.displayManager = {
  #   defaultSession = "none+i3";
  # };

  #in home.nix
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    # config = {
    #   modifier = "Mod4";
    #   gaps = {
    #     inner = 10;
    #     outer = 5;
    #   };
    # };
  };
}
