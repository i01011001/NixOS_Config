{
  pkgs,
  inputs,
  ...
}: {
  nixpkgs.overlays = [
    # (final: prev: {
    # wireshark = prev.wireshark.overrideAttrs (oldAttrs:{
    #     nativeBuildInputs =  builtins.filter (x: x != pkgs.python3)
    #         (oldAttrs.nativeBuildInputs ++ [(pkgs.python3.withPackages(ps: with ps; [ pip pyserial psutil west] ))]);
    #
    #     buildInputs =  oldAttrs.buildInputs ++ [
    #         (pkgs.python3.withPackages(ps: with ps; [ pip pyserial psutil west] ))
    #     ];
    # });
    # wireshark-custom = final.wireshark;
    # })

    (final: prev: {
      old_libunistring = prev.libunistring.overrideAttrs (
        oldAttrs: let
          pname = "libunistring";
          version = "0.9.10";
        in {
          version = "${version}";
          src = pkgs.fetchurl {
            url = "mirror://gnu/libunistring/${pname}-${version}.tar.gz";
            sha256 = "sha256-qC5bMzM5qI6kYI5GNUeaHPsuAar7kl4SkLZXENQ/YQs=";
          };
        }
      );
    })

    # inputs.niri.overlays.niri

    (final: prev: {
      vimPlugins =
        prev.vimPlugins
     //   {
          kanso = prev.vimUtils.buildVimPlugin {
            name = "kanso";
            src = inputs.kanso;
          };
          brellary = prev.vimUtils.buildVimPlugin {
            name = "brellary";
            src = inputs.brellary;
          };
        };
    })
  ];
}
