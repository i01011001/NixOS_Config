{
  boot.loader = {
    # grub = {
    #   enable = true;
    #   backgroundColor = "#000000";
    #   device = "nodev";
    #   useOSProber = false;
    #   efiSupport = true;
    #   gfxmodeBios = "auto";
    #   gfxmodeEfi = "auto";
    #   splashImage = null;
    # };
    systemd-boot.enable = true;

    efi = {
      canTouchEfiVariables = true;
      # efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
    };

    timeout = 5;
  };
}
