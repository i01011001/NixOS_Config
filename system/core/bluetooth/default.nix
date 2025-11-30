{
  hardware = {
    bluetooth = {
      enable = true; # enables support for Bluetooth
      powerOnBoot = true;
    };
  };
  services.blueman.enable = true;
}
