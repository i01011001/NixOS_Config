{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "unity";
  version = "master";

  src = fetchFromGitHub {
    owner = "ThrowTheSwitch";
    repo = "Unity";
    rev = "${finalAttrs.version}";
    sha256 = "sha256-72aWQ1W2NPmOJgwmakgYlzUF2ALn6cCvYhtmXEcuaNw=";
  };

  nativeBuildInputs = [cmake];
  cmakeFlags = [];
  doCheck = true;

  meta = {
    description = "Unity Unit Testing Framework";
    license = lib.licenses.mit;
  };
})
