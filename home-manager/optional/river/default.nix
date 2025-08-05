{
  config,
  ...
}: {
    wayland.windowManager.river = {
        enable  = true;
        extraSessionVariables = {
            DISPLAY= ":0";
            NIXOS_OZONE_WL=   1;
            _JAVA_AWT_WM_NONREPARENTING=   1;
            QT_WAYLAND_DISABLE_WINDOWDECORATION=  1;
            QT_QPA_PLATFORM= "xcb";
            GTK_USE_PORTAL= 1;
            TERMINAL= "foot";
        };
        extraConfig = builtins.readFile ./init;

    };
        # xdg.configFile."river/init".source = config.lib.file.mkOutOfStoreSymlink /etc/nixos/home-manager/optional/river/init;
}
