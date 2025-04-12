{
  programs.floorp = {
    enable = true;

    profiles = {
      i01011001 = {
        settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "browser.uidensity" = 1;
          "browser.compact.show" = true;
          "browser.compactmode.show" = true;
          # "sidebar.animation.enabled" = false;
          # "layers.offmainthreadcomposition.log-animations" = false;
          # "layout.css.prefixes.animations" = false;
          # "layout.css.animation-composition.enabled" = false;
          # "browser.suppress_first_window_animation" = false;
          "floorp.browser.sidebar.enable" = false;
          "floorp.browser.sidebar.is.displayed" = false;
          "floorp.browser.sidebar.right" = false;
          "floorp.browser.tabbar.settings" = 2;
          "floorp.tabbar.style" = 2;
          "font.name.monospace.x-western" = "Iosevka Nerd Font Propo";
          "font.name.sans-serif.x-western" = "Iosevka Nerd Font Propo";
          "font.name.serif.x-western" = "Iosevka Nerd Font Propo";

          "floorp.Tree-type.verticaltab.optimization" = true;
          "floorp.browser.tabs.verticaltab" = true;
          "floorp.browser.tabs.verticaltab.right" = false;
          # "floorp.browser.tabs.verticaltab.width"  = 0;
          "browser.tabs.hoverPreview.enabled" = false;
          "browser.tabs.hoverPreview.showThumbnails" = false;
          "floorp.verticaltab.hover.enabled" = false;
        };
        userChrome = builtins.readFile ./userChrome.css;
      };
    };

  };
}
