{
  config,
  lib,
  pkgs,
  ...
}: {
  # Load the driver
  services.xserver.videoDrivers = [
    # "modesetting" # example for Intel iGPU; use "amdgpu" here instead if your iGPU is AMD
    "nvidia"
  ];
  # Only keep this if you intend to COMPLETELY disable Intel Integrated Graphics
  # boot.kernelParams = ["module_blacklist=i915"];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      # vpl-gpu-rt # for newer GPUs on NixOS >24.05 or unstable
      # nvidia-vaapi-driver
      # intel-vaapi-driver
    ];
  };

  hardware.nvidia = {
    modesetting.enable = true;

    powerManagement.enable = true;
    powerManagement.finegrained = false; # Correct: must be false for Sync mode

    open = true;

    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;

    prime = {
      sync.enable = true;
      # offload = {
      #   enable = true;
      #   enableOffloadCmd = true;
      # };
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  hardware.nvidia-container-toolkit.enable = true;
}
