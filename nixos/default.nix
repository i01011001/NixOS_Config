{ pkgs, ... }:
{
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
    ./core/qt
    ./core/settings
    ./core/users
    ./core/zsh
	./core/xdg

    ### optional
    ./optional/adb
    ./optional/avahi
    ./optional/insecure
    ./optional/nix-ld
    ./optional/nvidia
    ./optional/printer
    ./optional/scanner
    ./optional/ssh
    ./optional/systemPackages
    ./optional/tmux
    ./optional/wireshark
    ./optional/docker
    ./optional/mosquitto
    ./optional/multipass
    ./optional/opentabletdriver
	./optional/virtual
	# ./optional/sway
    ./optional/steam
    ./optional/i3
    # ./optional/qemu
    # ./optional/x11

  ];

  programs.nano.enable = false;
  time.timeZone = "Asia/Kathmandu";
  system.stateVersion = "23.11";
}
