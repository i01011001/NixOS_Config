{
  lib,
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    # hyprcursor
    hyprpaper
    hypridle
    hyprlock
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
    xwayland.enable = true;
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
        ''swaybg -m stretch -i /etc/nixos/images/mini-nix-side-grey.png''
        # ''swaybg -c #383838''
      ];

      cursor = {
        inactive_timeout = 4;
        hide_on_key_press = true;
        hide_on_touch = true;
      };

      binds = {
        hide_special_on_workspace_change = true;
      };

      general = {
        gaps_in = 3;
        gaps_out = 4;
        "col.active_border" = lib.mkForce "rgba(464646ff)";
        "col.inactive_border" = lib.mkForce "rgba(464646ff)";
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
        rounding = 7;
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
        # repeat_delay = 300;
        # repeat_rate = 60;
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
        # "WLR_RENDERER, vulkan"
        "QT_QPA_PLATFORM, xcb"
        "GTK_USE_PORTAL, 1"
        "TERMINAL, foot"
      ];

      animations = {
        enabled = "no";
        first_launch_animation = "no";
        # no_anim = "^(tofi)$";
        # bezier = [
        #   "wind, 0.05, 0.9, 0.1, 1.05"
        #   "winIn, 0.1, 1.1, 0.1, 1.1"
        #   "winOut, 0.3, -0.3, 0, 1"
        #   "liner, 1, 1, 1, 1"
        # ];
        #
        # animation = [
        #   "windows, 1, 6, wind, slide"
        #   "windowsIn, 1, 6, winIn, slide"
        #   "windowsOut, 1, 5, winOut, slide"
        #   "windowsMove, 1, 5, wind, slide"
        #   "border, 1, 1, liner"
        #   "borderangle, 1, 30, liner, loop"
        #   "fade, 1, 10, default"
        #   "workspaces, 1, 5, wind"
        # ];
        bezier = [
          "wind, 0.05, 0.85, 0.03, 0.97"
          "winIn, 0.07, 0.88, 0.04, 0.99"
          "winOut, 0.20, -0.15, 0, 1"
          "liner, 1, 1, 1, 1"
          "md3_standard, 0.12, 0, 0, 1"
          "md3_decel, 0.05, 0.80, 0.10, 0.97"
          "md3_accel, 0.20, 0, 0.80, 0.08"
          "overshot, 0.05, 0.85, 0.07, 1.04"
          "crazyshot, 0.1, 1.22, 0.68, 0.98"
          "hyprnostretch, 0.05, 0.82, 0.03, 0.94"
          "menu_decel, 0.05, 0.82, 0, 1"
          "menu_accel, 0.20, 0, 0.82, 0.10"
          "easeInOutCirc, 0.78, 0, 0.15, 1" # last defined wins
          "easeOutCirc, 0, 0.48, 0.38, 1"
          "easeOutExpo, 0.10, 0.94, 0.23, 0.98"
          "softAcDecel, 0.20, 0.20, 0.15, 1"
          "md2, 0.30, 0, 0.15, 1"
          "OutBack, 0.28, 1.40, 0.58, 1"
        ];

        animation = [
          "border, 1, 1.6, liner"
          "borderangle, 1, 82, liner, loop"
          "windowsIn, 1, 3.2, winIn, slide"
          "windowsOut, 1, 2.8, easeOutCirc"
          "windowsMove, 1, 3.0, wind, slide"
          "fade, 1, 1.8, md3_decel"
          "layersIn, 1, 1.8, menu_decel, slide"
          "layersOut, 1, 1.5, menu_accel"
          "fadeLayersIn, 1, 1.6, menu_decel"
          "fadeLayersOut, 1, 1.8, menu_accel"
          "workspaces, 0, 4.0, menu_decel, slide"
          "specialWorkspace, 1, 2.3, md3_decel, slidefadevert 15%"
        ];
      };

      windowrule = [
        "noanim, class:^(tofi-drun)$"
      ];

      layerrule = [
        "noanim, tofi-drun"
      ];
      gestures = {
        workspace_swipe = false;
      };

      # plugin = {
      #   hyprsplit = {
      #     num_workspaces = 10;
      #   };
      # };

      "$mainMod" = "SUPER";

      bindm = [
        ''$mainMod, mouse:272, movewindow''
        ''$mainMod, mouse:273, resizewindow''
      ];

      bind = [
        ''$mainMod, mouse_down, workspace, e+1''
        ''$mainMod, mouse_up, workspace, e-1''

        ''$mainMod , T, exec, $terminal ''
        ''$mainMod, P, exec, $menu_drun''
        ''$mainMod SHIFT, P, exec, $menu_run''
        ''$mainMod, Q, killactive''
        ''$mainMod SHIFT, Q, exit''
        '', PRINT, exec,   capture_whole''
        ''$mainMod SHIFT, F, fullscreen, 2''
        ''$mainMod, F, fullscreen, 1''

        ''$mainMod CONTROL, F, togglefloating''

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

        '',XF86AudioRaiseVolume, exec, audio_up''
        '',XF86AudioLowerVolume, exec, audio_down''
        '',XF86AudioMute, exec, wpctl audio_toggle''

        ''$mainMod CONTROL, F8, exec, audio_up''
        ''$mainMod CONTROL, F7, exec, audio_down''
        ''$mainMod CONTROL, F6, exec, audio_toggle''

        '',XF86MonBrightnessUp, exec, brightness_up ''
        '',XF86MonBrightnessDown, exec, brightness_down''

        ''$mainMod CONTROL, F12, exec, brightness_up''
        ''$mainMod CONTROL, F11, exec, brightness_down''

        ''$mainMod, Space, exec, notify-widget''
        ''$mainMod SHIFT, Space, exec, notify-network''

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
        "$mainMod SHIFT, 0, movetoworkspacesilent, 10"

        ''$mainMod SHIFT, Period, movecurrentworkspacetomonitor, eDP-1''
        ''$mainMod SHIFT, Comma, movecurrentworkspacetomonitor, HDMI-A-2''

        # ''$mainMod SHIFT, Period, split:swapactiveworkspaces, l r''
        # ''$mainMod SHIFT, Comma, split:swapactiveworkspaces, r l''

        ''$mainMod, Period, focusmonitor, eDP-1''
        ''$mainMod, Comma, focusmonitor, HDMI-A-2''
      ];
    };
  };

  services = {
    hypridle = {
      enable = true;
      settings = {
        general = {
          after_sleep_cmd = "hyprctl dispatch dpms on";
          ignore_dbus_inhibit = false;
          lock_cmd = "hyprlock";
        };

        listener = [
          {
            timeout = 900;
            on-timeout = "hyprlock";
          }
          {
            timeout = 1200;
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
        ];
      };
    };
    hyprpaper = {
      enable = true;
      settings = {
        # ipc = "on";
        # splash = false;
        # splash_offset = 2.0;

        preload = [
          "/etc/nixos/images/mini-nix-side-grey.png"
        ];

        wallpaper = [
          "eDP-1,/etc/nixos/images/mini-nix-side-grey.png"
        ];
      };
    };
    hyprshell = {
        enable = true;
        
        };
  };
}
