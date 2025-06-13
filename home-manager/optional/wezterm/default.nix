{config, ...}: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig = builtins.readFile ./wezterm.lua;
  };

  # xdg.configFile."wezterm/wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/wezterm/wezterm.lua;
}
