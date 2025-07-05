{
  networking = {
    hostName = "nixos";
    wireless.iwd = {
      enable = true;
    };
  };

  services.resolved = {
    enable = false;
    dnssec = "true";
    dnsovertls = "true";
    extraConfig = ''
      [Resolve]
      MulticastDNS=no
      LLMNR=no         # optional, unless you want Windows-style name resolution
    '';
  };
}
