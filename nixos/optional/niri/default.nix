{pkgs, inputs, ...}:
{
      programs.niri.enable = true;
      nixpkgs.overlays = [inputs.niri.overlays.niri];
      programs.niri.package = pkgs.niri-unstable;
}
