{
  config,
  lib,
  pkgs,
  ...
}: {
  hardware.nvidia = {
    prime = {
      # sync.enable = true;

      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      # Make sure to use the correct Bus ID values for your system!
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
    # forceFullCompositionPipeline = true;
  };
  boot.kernelParams = [
    "nvidia-drm.fbdev=1"
    # Disables GSP to prevent "semaphore" errors
    "nvidia.NVreg_EnableGpuFirmware=0"
    "nvidia-drm.modeset=1"
  ];
  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];
  environment.variables."GBM_BACKEND" = "nvidia-drm";

  # nix.settings.substituters = [
  #     "https://cuda-maintainers.cachix.org"
  # ];

  hardware.nvidia = {
    # nvidiaPersistenced = true;
    modesetting.enable = true;
    # forceFullCompositionPipeline = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    nvidiaSettings = true;
    open = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
}
