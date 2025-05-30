{
  programs.zathura = {
    enable = true;

    options = {
      adjust-open = "best-fit";
      pages-per-row = 1;
      scroll-page-aware = "true";
      smooth-scroll = "true";
      scroll-full-overlap = 0.01;
      scroll-step = 100;
      zoom-min = 10;
      guioptions = "";
      font = "Iosevka Nerd Font Propo 10";
      default-bg = "#131313";
      default-fg = "#F7F7F6";

      statusbar-fg = "#B0B0B0";
      statusbar-bg = "#202020";

      inputbar-bg = "#151515";
      inputbar-fg = "#FFFFFF";

      notification-error-bg = "#AC4142";
      notification-error-fg = "#151515";

      notification-warning-bg = "#AC4142";
      notification-warning-fg = "#151515";

      highlight-color = "#F4BF75";
      highlight-active-color = "#6A9FB5";

      completion-highlight-fg = "#151515";
      completion-highlight-bg = "#90A959";

      completion-bg = "#303030";
      completion-fg = "#E0E0E0";

      notification-bg = "#90A959";
      notification-fg = "#151515";

      recolor = "true";
      recolor-lightcolor = "#131313";
      recolor-darkcolor = "#E0E0E0";
      recolor-reverse-video = "true";
      recolor-keephue = "true";

      render-loading = "false";
      selection-clipboard = "clipboard";
    };

    mappings = {
      "f" = "toggle_fullscreen";
      "[fullscreen] f" = "toggle_fullscreen";
    };
  };
}
