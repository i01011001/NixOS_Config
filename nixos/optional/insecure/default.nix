{
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
    segger-jlink.acceptLicense = true;
    permittedInsecurePackages = [
      "segger-jlink-qt4-796s"
      "segger-jlink-qt4-810"
      "dotnet-runtime-6.0.36"
      "dotnet-sdk-wrapped-6.0.428"
      "dotnet-sdk-6.0.428"
    ];
  };
}
