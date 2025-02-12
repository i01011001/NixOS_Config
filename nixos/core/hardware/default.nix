{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd = {
    availableKernelModules = [
      "xhci_pci"
      "ahci"
      "nvme"
      "usb_storage"
      "sd_mod"
    ];
  };

  boot.kernelModules = [ "kvm-intel" ];
  boot.kernelPackages = pkgs.linuxPackages_6_13;
  boot.extraModulePackages = [ ];
  boot.extraModprobeConfig = ''
    		options snd_hda_intel 
    		'';

  fileSystems."/" = {
    # device = "/dev/disk/by-uuid/411e3ae8-6712-4c18-b565-b8d2bbde883c";
    device = "/dev/disk/by-label/nixos";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    #  device = "/dev/disk/by-uuid/65E2-AB2D";
    device = "/dev/disk/by-label/boot";
    fsType = "vfat";
    options = [
      "fmask=0077"
      "dmask=0077"
    ];
  };

  fileSystems."/home/void/extra" = {
    device = "/dev/disk/by-label/extra";
    fsType = "ext4";
  };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp7s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp0s20f3.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
