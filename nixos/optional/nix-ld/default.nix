{
  pkgs,
  inputs,
  ...
}: {
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      openssl
      zlib
      fuse3
      icu
      nss
      expat
      libusb1
      libidn2
      libyaml
      libnghttp2
      gnutls
      gmp

      glib
      e2fsprogs

      libxcrypt-legacy
      libunistring
      old_libunistring
      (import ./../../../customs/libraries/icu/default.nix {inherit stdenv fetchurl;})

      gobject-introspection
      libgcc
      icu
      libffi

      # gtk3
      # pango
      # atk
      # cairo
      # gdk-pixbuf
      # libunwind
      # libxc

    ];
  };
}
