{pkgs, ...}: {
  environment = {
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FUNCNEST = 1000;

      XDG_PICTURES_DIR = "/storage/media/images/";
    };

    pathsToLink = [
      "/share/zsh"
      "/share/applications"
      "/share/xdg-desktop-portal"
    ];

    sessionVariables = {
      QT_QPA_PLATFORMTHEME = "qt5ct";
      QT_FONT_DPI = "90";
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
      TERM = "xterm-256color";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      WLR_RENDERER = "vulkan";
      TERMINAL = "foot";

      _JAVA_AWT_WM_NONREPARENTING = "1";
      JAVA_TOOL_OPTIONS = "--add-opens=java.desktop/java.awt=ALL-UNNAMED";
    };
  };
}
