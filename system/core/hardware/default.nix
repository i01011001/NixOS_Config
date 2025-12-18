{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  # Bootloader and Kernel
  boot.initrd.availableKernelModules = ["xhci_pci" "ahci" "nvme" "usbhid" "sd_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];
  
  # Using latest kernel for better hardware support
  boot.kernelPackages = pkgs.linuxPackages_latest;


  # File Systems
  fileSystems."/" = {
    device = "/dev/disk/by-label/NIXROOT";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/NIXBOOT";
    fsType = "vfat";
    options = ["fmask=0077" "dmask=0077"];
  };

  # Changed from /mnt to /storage (standard practice)
  fileSystems."/storage" = {
    device = "/dev/disk/by-uuid/a35ac5e7-392f-4b5b-9dc6-7ba056f97c8d";
    fsType = "ext4";
  };

  # Network
  networking.useDHCP = lib.mkDefault true;

  # Hardware
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
