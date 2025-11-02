{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      # General purpose
      noto-fonts
      noto-fonts-cjk-sans # Chinese, Japanese, Korean
      noto-fonts-color-emoji

      # Unicode coverage
      unifont # fallback for rare symbols
      dejavu_fonts

      # Icon fonts
      material-design-icons
      font-awesome
    ];
  };
}
