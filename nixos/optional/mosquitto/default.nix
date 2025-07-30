{
  services.mosquitto = {
    enable = true;
    listeners = [
      {
        address = "0.0.0.0";
        port = 18833;
        settings.allow_anonymous = true;
        omitPasswordAuth = true;
        # users.iotdevice = {
        #   acl = [
        #     "read IoT/device/action"
        #     "write IoT/device/observations"
        #     "write IoT/device/LW"
        #   ];
        #   # password = "mysweetpassword-or-use-hashedPassword";
        # };
      }
    ];
  };
}
