{
  services.sshd.enable = true;
  # services.openssh.settings.PermitRootLogin = "yes";

  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
