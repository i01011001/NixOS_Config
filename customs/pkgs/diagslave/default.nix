{pkgs}:
pkgs.stdenv.mkDerivation {
  pname = "diagslave";
  version = "main";
  src = fetchTarball {
    url = "https://www.modbusdriver.com/downloads/diagslave.tgz";
    sha256 = "sha256:19fmynzpg84dp81gz2pc4r2gm307l0ydacf52kq8wclrqs154r2m";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp x86_64-linux-gnu/diagslave $out/bin
    # echo $(ls) >> $out
  '';
}
