{
  networking = {
    hostName = "nixos";
    wireless.iwd = {
      enable = true;
    };
    nameservers = [
      "1.1.1.1"
      "8.8.8.8"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        8000
        9988
      ];
    };
  };
}
