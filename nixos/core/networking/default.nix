{
  networking = {
    # networkmanager = {
    # 	enable = true;
    # 	wifi.backend = "iwd";
    # 	};
    hostName = "nixos";
    wireless.iwd = {
      enable = true;
      settings = {
        Settings.AutoConnect = true;
      };
    };
    firewall = {
      enable = false;
      allowedTCPPorts = [ 22 ];
    };
    # useDHCP = false;
    # interfaces.enp7s0 = {
    #   useDHCP = true;
    #   ipv4.addresses = [
    #     {
    #       address = "192.168.1.70";
    #       prefixLength = 24;
    #     }
    #   ];
    # };
    #
    # interfaces.wlan0 = {
    #   useDHCP = true;
    #   ipv4.addresses = [
    #     {
    #       address = "192.168.1.69";
    #       prefixLength = 24;
    #     }
    #   ];
    # };
    # defaultGateway = "192.168.1.254";
    # nameservers = [
    #   "1.1.1.1"
    #   "8.8.8.8"
    # ];
    # enableIPv6 = false;
    # dhcpcd.extraConfig = "nohook resolv.conf";
  };

  services.resolved.enable = false;
}
