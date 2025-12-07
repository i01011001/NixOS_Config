{pkgs, ...}: {
  imports = [
    ### core
    ./core/audio
    ./core/bluetooth
    ./core/bootloader
    ./core/environment
    ./core/fonts
    ./core/hardware
    ./core/networking
    ./core/opengl
    # ./core/qt
    ./core/settings
    ./core/users
    ./core/zsh
    ./core/dbus
    # ./core/vim
    # ./core/xdg

    ### optional
    ./optional/adb
    ./optional/avahi
    ./optional/insecure
    ./optional/nix-ld
    ./optional/nvidia
    ./optional/scanner
    ./optional/ssh
    ./optional/systemPackages
    ./optional/tmux
    ./optional/wireshark
    ./optional/docker
    ./optional/mosquitto
    # ./optional/multipass
    ./optional/opentabletdriver
    ./optional/virtual
    ./optional/stylix
    ./optional/postgresql
    ./optional/customs/overlays
    # ./optional/steam
    # ./optional/printer
    # ./optional/qemu
  ];

  # console = {
  #   packages = with pkgs; [
  #     terminus-nerdfont
  #     terminus_font
  #   ];
  #   font = "ter-v16n";
  # };

  programs.nano.enable = false;
  time.timeZone = "Asia/Kathmandu";
  system.stateVersion = "23.11";
}
