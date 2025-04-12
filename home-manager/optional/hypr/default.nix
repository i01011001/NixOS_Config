{ inputs, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    # package = pkgs.hyprland;
    systemd.enable = true;
    xwayland.enable = true;

    plugins = [
      # inputs.hyprfocus.packages.${pkgs.system}.hyprfocus
      inputs.split-monitor-workspaces.packages.${pkgs.system}.split-monitor-workspaces
      # inputs.hy3.packages.x86_64-linux.hy3
    ];
    extraConfig = builtins.readFile ./master.conf;
  };
}
