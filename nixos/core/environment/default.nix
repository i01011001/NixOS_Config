{pkgs, ...}: {
  environment = {
    pathsToLink = ["/share/zsh"];
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FUNCNEST = 1000;

      XDG_PICTURES_DIR = "~/media/images/";
    };
    sessionVariables = {
      QT_QPA_PLATFORM = "wayland";
      QT_QPA_PLATFORMTHEME = "qt5ct";
      QT_FONT_DPI = "90";
    };
  };
}
