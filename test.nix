{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "unity-test";
  version = "master";

  src = fetchFromGitHub {
    owner = "ThrowTheSwitch";
    repo = "Unity";
    rev = "${finalAttrs.version}";
    sha256 = "sha256-ZCfJgEY3Bb9CgltB005SJGNz7IWPOOG4qdNlLatZF8g=";
  };

  nativeBuildInputs = [ cmake ];
  doCheck = true;

  meta = with lib; {
    description = "Unity Unit Testing Framework";
    homepage = "https://www.throwtheswitch.org/unity";
    license = licenses.mit;
    maintainers = [ maintainers.i01011001 ];
  };
})
