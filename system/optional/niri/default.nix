{
  pkgs,
  inputs,
  ...
}: {
  # services = {
  #   niri-tag = {
  #     enable = true;
  #   };
  # };
  # services.niri-tag.enable = true;
  programs.niri = {
    enable = true;
    package = inputs.niri.packages.${pkgs.stdenv.hostPlatform.system}.niri;
    # package = pkgs.niri-unstable;
  };

  # nixpkgs.overlays = [inputs.niri.overlays.niri];
}
