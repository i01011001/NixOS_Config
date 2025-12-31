{
  pkgs,
  lib,
  config,
  ...
}: {
  home.packages = with pkgs; [
    sway
    swaybg
    swayimg
    swayidle
    swaylock
    # sov
  ];
  xdg.configFile."sway/config".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home/optional/sway/config;

  # systemd.user = {
  #   sockets.sov = {
  #     Unit.Description = "Socket for sov service";
  #     Socket.ListenStream = "%t/sov.sock"; # %t expands to $XDG_RUNTIME_DIR
  #     Install.WantedBy = ["sockets.target"];
  #   };
  #
  #   services.sov = {
  #     Unit = {
  #       Description = "sov service";
  #       Requires = ["sov.socket"];
  #       After = ["sov.socket"];
  #     };
  #     Service = {
  #       # Replace this with the actual path to your sov binary
  #       ExecStart = "${pkgs.sov}/bin/sov";
  #       # Optional: ensure the service can talk to the socket
  #       StandardInput = "socket";
  #     };
  #   };
  # };
}
