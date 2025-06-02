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
  # boot.kernelModules = [ "nvidia_uvm" ];

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
    # powerManagement.enable = false;
    # powerManagement.finegrained = false;
    # nvidiaSettings = true;
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };
}
