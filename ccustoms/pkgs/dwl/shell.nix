{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    pkg-config
    wayland-scanner
    wayland-protocols
    libxkbcommon
    wlroots_0_18
    wayland
    libinput
    pixman
  ];
}
