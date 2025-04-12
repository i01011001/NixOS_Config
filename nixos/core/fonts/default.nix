{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      nerd-fonts.iosevka
      #    nerd-fonts.hack
      # nerd-fonts.mononoki

      # normal Fonts

      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji

      # icon Fonts
      material-design-icons
    ];
    fontconfig.defaultFonts = {
      monospace = [ "Iosevka Nerd Font Propo" ];
      sansSerif = [ "Iosevka Nerd Font Propo" ];
      serif = [ "Iosevka Nerd Font Propo" ];
    };
  };
}
