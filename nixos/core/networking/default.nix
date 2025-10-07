{
  networking = {
    hostName = "nixos";
    wireless.iwd = {
      enable = true;
    };

    # useDHCP = true;
    # interfaces.enp7s0 = {
    #   useDHCP = true;
    #   ipv4.addresses = [
    #     {
    #       address = "192.168.5.100";
    #       prefixLength = 22;
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
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ];
    # enableIPv6 = false;
    # dhcpcd.extraConfig = "nohook resolv.conf";
  };

#   services.resolved = {
#     enable = false;
#     dnssec = "true";
#     dnsovertls = "true";
#     extraConfig = ''
#       [Resolve]
#       MulticastDNS=no
#       LLMNR=no         # optional, unless you want Windows-style name resolution
#     '';
#   };
}
