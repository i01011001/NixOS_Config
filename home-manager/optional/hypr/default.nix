{
  inputs,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
    xwayland.enable = true;

    plugins = with pkgs.hyprlandPlugins; [
      hyprsplit
      hy3
    ];

    settings = {
      monitor = [
        ''eDP-1, 1920x1080@144, 0x0, 1''
        ''HDMI-A-2,1440x900,-1440x0,1''
      ];
      "$terminal" = "foot";
      "$fileManager" = "";
      "$menu_drun" = "tofi-drun";
      "$menu_run" = "exec $(tofi-run)";

      exec-once = [
        ''mako''
        # ''swaybg -m stretch -i /etc/nixos/images/mini-nix-side.png''
       ''swaybg -c #383838''
      ];

      cursor = {
        inactive_timeout = 4;
        hide_on_key_press = true;
        hide_on_touch = true;
      };

      general = {
        gaps_in = 3;
        gaps_out = 4;
        # "col.active_border" = "rgba(464646ff)";
        # "col.inactive_border" = "rgba(464646ff)";
        layout = "master";
      };

      master = {
        mfact = 0.55;
        new_status = "slave";
        new_on_top = false;
        new_on_active = "none";
        allow_small_split = true;
        special_scale_factor = 0.7;
      };

      decoration = {
        rounding = 4;
        shadow = {
          enabled = false;
        };

        blur = {
          enabled = true;
          special = true;
          popups = true;
          size = 4;
        };
      };

      misc = {
        render_unfocused_fps = 60;
        disable_hyprland_qtutils_check = true;
        force_default_wallpaper = 1;
        disable_hyprland_logo = true;
        # enable_swallow = true;
        # swallow_regex = "(?i)^(foot|alacritty)";
        # swallow_exception_regex = "(?i)^(foot:foot)$";
        font_family = "Iosevka Nerd Font Propo";
        splash_font_family = "iosevka nerd font propo";
      };

      debug = {
        disable_logs = false;
      };

      input = {
        repeat_delay = 300;
        repeat_rate = 60;
        kb_layout = "us";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          disable_while_typing = true;
          natural_scroll = true;
        };
      };

      env = [
        "DISPLAY, :0"
        "NIXOS_OZONE_WL,   1"
        "_JAVA_AWT_WM_NONREPARENTING,   1"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,  1"
        "WLR_RENDERER, vulkan"
        "GTK_USE_PORTAL, 1"
        "TERMINAL, foot"
      ];

      animations = {
        enabled = "yes";
        first_launch_animation = "no";
        bezier = [
          "windowIn, 0.06, 0.71, 0.25, 1"
          "windowResize, 0.04, 0.67, 0.38, 1"
          "workspacesMove, 0.1, 0.75, 0.15, 1"
        ];
        animation = [
          "windowsIn, 1, 3, windowIn, slide #popin 20%"
          "windowsOut, 1, 3, windowIn, slide #popin 70%"
          "windowsMove, 1, 2.5, windowResize"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 3, default"
          "workspaces, 1, 5, workspacesMove, slidevert"
          "layers, 1, 5, windowIn, slide"
        ];
      };

      gestures = {
        workspace_swipe = false;
      };

      plugin = {
        hyprsplit = {
          num_workspaces = 10;
        };
      };

      "$mainMod" = "SUPER";
      bindm = [
        ''$mainMod, mouse:272, movewindow''
        ''$mainMod, mouse:273, resizewindow''
      ];

      bind = [
        ''$mainMod, mouse_down, workspace, e+1''
        ''$mainMod, mouse_up, workspace, e-1''

        ''$mainMod SHIFT, Return, exec, $terminal ''
        ''$mainMod, R, exec, $menu_drun''
        ''$mainMod SHIFT, R, exec, $menu_run''
        ''$mainMod SHIFT, C, killactive''
        ''$mainMod SHIFT, Q, exit''
        '', PRINT, exec, flameshot gui -p ~/media/images/screenshots/ -r | wl-copy''
        ''$mainMod CONTROL, F, fullscreen, 2''
        ''$mainMod CONTROL, M, fullscreen, 1''
        ''$mainMod, Space, togglefloating''

        ''$mainMod SHIFT, J, layoutmsg, swapnext ''
        ''$mainMod SHIFT, K, layoutmsg, swapprev''
        ''$mainMod CONTROL, H, layoutmsg, orientationleft''
        ''$mainMod CONTROL, L, layoutmsg, orientationright''
        ''$mainMod CONTROL, K, layoutmsg, orientationtop''
        ''$mainMod CONTROL, J, layoutmsg, orientationbottom''
        ''$mainMod CONTROL, SEMICOLON, layoutmsg, orientationcenter''
        ''$mainMod SHIFT, H, layoutmsg, mfact -0.05''
        ''$mainMod SHIFT, L, layoutmsg, mfact +0.05''
        ''$mainMod, H,  layoutmsg, focusmaster master''
        ''$mainMod, J,  layoutmsg, cyclenext''
        ''$mainMod, K, layoutmsg,  cycleprev''
        ''$mainMod, Return, layoutmsg, swapwithmaster master''

        ''$mainMod, S, togglespecialworkspace, magic''
        ''$mainMod SHIFT, S, movetoworkspace, special:magic''

        ''$mainMod CONTROL, B, exec, notifybattery''
        ''$mainMod CONTROL, V, exec, notifyvolume''
        ''$mainMod CONTROL, C, exec, notifytime''
        ''$mainMod CONTROL, X, exec, notifybrightness''

        '',XF86AudioRaiseVolume, exec, volumeup''
        '',XF86AudioLowerVolume, exec, volumedown''
        '',XF86AudioMute, exec, wpctl volumemute''

        ''$mainMod CONTROL, F8, exec, volumeup''
        ''$mainMod CONTROL, F7, exec, volumedown''
        ''$mainMod CONTROL, F6, exec, volumemute''

        '',XF86MonBrightnessUp, exec, brightnessup ''
        '',XF86MonBrightnessDown, exec, brightnessdown''
        ''$mainMod CONTROL, F12, exec, brightnessup''
        ''$mainMod CONTROL, F11, exec, brightnessdown''

        "$mainMod, 1, split:workspace, 1"
        "$mainMod, 2, split:workspace, 2"
        "$mainMod, 3, split:workspace, 3"
        "$mainMod, 4, split:workspace, 4"
        "$mainMod, 5, split:workspace, 5"
        "$mainMod, 6, split:workspace, 6"
        "$mainMod, 7, split:workspace, 7"
        "$mainMod, 8, split:workspace, 8"
        "$mainMod, 9, split:workspace, 9"
        "$mainMod, 0, split:workspace, 10"

        "$mainMod SHIFT, 1, split:movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, split:movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, split:movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, split:movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, split:movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, split:movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, split:movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, split:movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, split:movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, split:movetoworkspacesilent, 10"

        ''$mainMod SHIFT, Period, movecurrentworkspacetomonitor, eDP-1''
        ''$mainMod SHIFT, Comma, movecurrentworkspacetomonitor, HDMI-A-2''

        ''$mainMod SHIFT, Period, split:swapactiveworkspaces, l r''
        ''$mainMod SHIFT, Comma, split:swapactiveworkspaces, r l''

        ''$mainMod, Period, focusmonitor, eDP-1''
        ''$mainMod, Comma, focusmonitor, HDMI-A-2''
      ];
    };
  };
}
