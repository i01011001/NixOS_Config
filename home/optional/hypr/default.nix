{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    # hyprcursor
    hyprlock
  ];
  xdg.configFile."hypr/hyprland.conf".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/hypr/hyprland.conf;

  wayland.windowManager.hyprland = {
    enable = true;
    # systemd = {
    #   enable = true;
    #   # variables = ["--all"];
    #   enableXdgAutostart = false;
    # };
    xwayland.enable = true;
  };

  services = {
    hypridle = {
      enable = true;
      settings = {
        general = {
          after_sleep_cmd = "hyprctl dispatch dpms on";
          ignore_dbus_inhibit = false;
          lock_cmd = "hyprlock";
        };

        listener = [
          {
            timeout = 900;
            on-timeout = "hyprlock";
          }
          {
            timeout = 1200;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
        ];
      };
    };
    hyprpaper = {
      enable = false;
      settings = {
        # ipc = "on";
        # splash = false;
        # splash_offset = 2.0;

        preload = [
          "/etc/nixos/images/mini-nix-side-grey.png"
        ];

        wallpaper = [
          "eDP-1,/etc/nixos/images/mini-nix-side-grey.png"
        ];
      };
    };
  };
}
