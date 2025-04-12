{
  environment = {
    pathsToLink = [ "/share/zsh" ];
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      FUNCNEST = 1000;

      XDG_PICTURES_DIR = "~/media/images/";
      QT_QPA_PLATFORMTHEME = "qt5ct";
      _JAVA_AWT_WM_NONREPARENTING = 1;

      QT_WAYLAND_DISABLE_WINDOWDECORATION = 1;
      WLR_NO_HARDWARE_CURSORS = 1;
      # WLR_DRM_NO_MODIFIERS=1;

      # WLR_RENDERER="vulkan";
      # __GL_GSYNC_ALLOWED=1;
      # __GL_VRR_ALLOWED=1;
      # MUTTER_FRAMES_PLATFORM_LIBRARY="none";

    };
  };
}
