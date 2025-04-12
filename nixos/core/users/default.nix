{ pkgs, ... }:
{
  users = {
    users.i01011001 = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "audio"
        "video"
        "dialout"
        "input"
        "adbusers"
        "wireshark"
        "lp"
        "scanner"
        "networkmanager"
      ];
    };
    defaultUserShell = pkgs.zsh;
  };
}
