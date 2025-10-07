{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      # General purpose
      noto-fonts
      noto-fonts-cjk-sans   # Chinese, Japanese, Korean
      noto-fonts-emoji
      noto-fonts-extra      # serif, mono, display variants

      # Unicode coverage
      unifont               # fallback for rare symbols
      dejavu_fonts

      # Icon fonts
      material-design-icons
      font-awesome
    ];
  };
}
