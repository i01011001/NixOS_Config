{
  pkgs,
  lib,
  ...
}: {
  boot.loader = {
    grub = {
      enable = true;
      backgroundColor = "#131313";
      device = "nodev";
      # useOSProber = true;
      efiSupport = true;
      gfxmodeBios = "auto";
      gfxmodeEfi = "auto";
      # font = lib.mkForce ''${pkgs.grub2}/share/grub/unicode.pf2'';
      # fontSize = lib.mkForce 20;
      splashImage = null;
    };
    # systemd-boot.enable = true;

    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
    };

    timeout = 5;
  };
}
