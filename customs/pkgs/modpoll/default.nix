{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "modpoll";
  version = "main";
  src = fetchTarball {
    url = "https://www.modbusdriver.com/downloads/modpoll.tgz";
    sha256 = "sha256:1z2n2xb9gd145kq8mdv00pph7sxk4r170rm6afknvr7fpkbv0szr";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp x86_64-linux-gnu/modpoll $out/bin
    # echo $(ls) >> $out
  '';
}
