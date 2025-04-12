{
	stdenv,
	fetchurl
}:

stdenv.mkDerivation {
  pname = "libicu";
  version = "54.2";

  src = fetchurl {
    url = "https://github.com/unicode-org/icu/releases/download/release-55-2/icu4c-55_2-src.tgz";
    sha256 = "sha256-7aKqn5x4d0ii4tMQWQcgyovMYlKt9rTPsDtlvvnWZ1k="; 
  };

  configurePhase = ''
    cd source
    ./configure --prefix=$out
  '';

}
