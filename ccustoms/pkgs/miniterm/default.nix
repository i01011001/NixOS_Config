{ pkgs, ... }:
pkgs.stdenv.mkDerivation {
  pname = "miniterm";
  version = "master";
  src = pkgs.fetchFromGitHub {
    owner = "wojtekka";
    repo = "miniterm";
    rev = "master";
    sha256 = "sha256-cmZO9wGvX86b5NsRas/DrKOeqjdxk2htukeetoWFqFU=";
  };
  buildPhase = ''
    make
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp miniterm $out/bin
  '';
}
