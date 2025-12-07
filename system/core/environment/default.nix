{pkgs, ...}: {
  environment = {
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FUNCNEST = 1000;

      XDG_PICTURES_DIR = "/home/i01011001/media/images/";
    };

    pathsToLink = ["/share/zsh"
 "/share/applications" "/share/xdg-desktop-portal" 
    ];


    sessionVariables = {
      QT_QPA_PLATFORM = "wayland";
      QT_QPA_PLATFORMTHEME = "qt5ct";
      QT_FONT_DPI = "90";
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
      # WLR_DRM_NO_ATOMIC = "1";
      # DISPLAY = ":0";
      #
      # _JAVA_AWT_WM_NONREPARENTING = "1";
      # QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      # # WLR_RENDERER = "vulkan";
      # # GTK_USE_PORTAL = "1";
      # TERMINAL = "foot";
      # TERM = "xterm-256color";
    };
  };
}
