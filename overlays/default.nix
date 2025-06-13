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

    inputs.niri.overlays.niri

    (final: super: {
      dwl =
        (super.dwl.overrideAttrs (oldAttrs: {
          patches = [
            ../customs/pkgs/dwl/dwl-patches/attachbottom.patch
            ../customs/pkgs/dwl/dwl-patches/pertag.patch
            ../customs/pkgs/dwl/dwl-patches/restoretiling.patch # only after pertag
            ../customs/pkgs/dwl/dwl-patches/autostart.patch
            ../customs/pkgs/dwl/dwl-patches/minimalborders.patch
            ../customs/pkgs/dwl/dwl-patches/unclutter.patch
            ../customs/pkgs/dwl/dwl-patches/alwayscenter.patch
            ../customs/pkgs/dwl/dwl-patches/stacker.patch
            ../customs/pkgs/dwl/dwl-patches/zoomswap.patch
            ../customs/pkgs/dwl/dwl-patches/swallow.patch
            ../customs/pkgs/dwl/dwl-patches/tabletinput.patch
            # ../customs/pkgs/dwl/dwl-patches/customtile.patch
            # ../customs/pkgs/dwl/dwl-patches/monitorconfig.patch
            # ../customs/pkgs/dwl/dwl-patches/cfact.patch
          ];
        })).override
        {configH = ../customs/pkgs/dwl/config.h;};
    })

    (final: prev: {
      vimPlugins =
        prev.vimPlugins
        // {
          nordic = prev.vimUtils.buildVimPlugin {
            name = "nordic";
            src = inputs.plugin-nordic;
          };

          own-onedark-nvim = prev.vimUtils.buildVimPlugin {
            name = "onedark";
            src = inputs.plugin-onedark;
          };

          moonfly = prev.vimUtils.buildVimPlugin {
            name = "moonfly";
            src = inputs.plugin-moonfly;
          };

          mellifluos = prev.vimUtils.buildVimPlugin {
            name = "melliflous";
            src = inputs.mellifluos;
          };
        };
    })
  ];
}
