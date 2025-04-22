{
  inputs,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
    };
    xwayland.enable = true;

    plugins = [
      # inputs.hyprfocus.packages.${pkgs.system}.hyprfocus
      inputs.split-monitor-workspaces.packages.${pkgs.system}.split-monitor-workspaces
      # inputs.hy3.packages.x86_64-linux.hy3
    ];

    settings = {
      monitor = [
        ''eDP-1, 1920x1080@144, 0x0, 1''
        ''HDMI-A-2,1440x900,-1440x0,1''
      ];
      "$terminal" = "alacritty";
      "$fileManager" = "thunar";
      "$menu_drun" = "tofi-drun";
      "$menu_run" = "exec $(tofi-run)";

      exec-once = [
        ''mako''
        ''swaybg -m fit -i /etc/nixos/images/mini-nix-side.png''
      ];
      cursor = {
        inactive_timeout = 4;
        hide_on_key_press = true;
        hide_on_touch = true;
      };
      general = {
        gaps_in = 3;
        gaps_out = 0;
        "col.active_border" = "rgba(464646ff)";
        "col.inactive_border" = "rgba(464646ff)";
        layout = "master";
      };
      master = {
        mfact = 0.55;
        new_status = "slave";
        new_on_top = false;
        new_on_active = "none";
        allow_small_split = true;
        special_scale_factor = .7;
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
        enable_swallow = false;
        swallow_regex = "^(foot|alacritty)";
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
      animations.enabled = false;
      gestures = {
        workspace_swipe = false;
      };
      plugin = {
        split-monitor-workspaces = {
          count = 9;
          keep_focused = 0;
          enable_notifications = 0;
          enable_persistent_workspaces = 1;
        };
      };

      "$mainMod" = "SUPER";

      bind = [
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

        ''$mainMod, mouse_down, workspace, e+1''
        ''$mainMod, mouse_up, workspace, e-1''

        # ''$mainMod, mouse:272, movewindow''
        # ''$mainMod, mouse:273, resizewindow''

        ''$mainMod CONTROL, B, exec, notify-send "Capacity" "`echo $(cat /sys/class/power_supply/BAT1/capacity & cat /sys/class/power_supply/BAT1/status)`"''
        ''$mainMod CONTROL, V, exec, notify-send "Volume" "`wpctl get-volume @DEFAULT_SINK@ | tr -d Volume: `"''
        ''$mainMod CONTROL, C, exec, notify-send  "`date +%H:%M`" "`date +%A` `date +%d`. `date +%B`"''
        ''$mainMod CONTROL, X, exec, notify-send "Brightness"  "`brightnessctl g`"''
        ''= $mainMod CONTROL, X, exec, notify-send -h int:value:$(($((`brightnessctl g`))/240)) $((`brightnessctl g`))''

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

        ''$mainMod, 1, split-workspace, 1''
        ''$mainMod, 2, split-workspace, 2''
        ''$mainMod, 3, split-workspace, 3''
        ''$mainMod, 4, split-workspace, 4''
        ''$mainMod, 5, split-workspace, 5''
        ''$mainMod, 6, split-workspace, 6''
        ''$mainMod, 7, split-workspace, 7''
        ''$mainMod, 8, split-workspace, 8''
        ''$mainMod, 9, split-workspace, 9''

        ''$mainMod SHIFT, 1, split-movetoworkspacesilent, 1''
        ''$mainMod SHIFT, 2, split-movetoworkspacesilent, 2''
        ''$mainMod SHIFT, 3, split-movetoworkspacesilent, 3''
        ''$mainMod SHIFT, 4, split-movetoworkspacesilent, 4''
        ''$mainMod SHIFT, 5, split-movetoworkspacesilent, 5''
        ''$mainMod SHIFT, 6, split-movetoworkspacesilent, 6''
        ''$mainMod SHIFT, 7, split-movetoworkspacesilent, 7''
        ''$mainMod SHIFT, 8, split-movetoworkspacesilent, 8''
        ''$mainMod SHIFT, 9, split-movetoworkspacesilent, 9''

        ''$mainMod SHIFT, Period, split-changemonitorsilent, +1''
        ''$mainMod SHIFT, Comma, split-changemonitorsilent, -1''

        ''$mainMod, Period, focusmonitor, eDP-1''
        ''$mainMod, Comma, focusmonitor, HDMI-A-2''
      ];
    };
  };
}
