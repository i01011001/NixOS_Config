{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = false;
    # colors = {
    #   bg = "#181818";
    #   "bg+" = "#181818";
    #   fg = "#dddddd";
    #   "fg+" = "#dddddd";
    # };

    defaultCommand = "fd --type file --hidden ";
    defaultOptions = [
      "--height 40%"
      "--info=inline"
      "--layout=reverse"
      "--no-scrollbar"
      "--no-separator"
      "--highlight-line"
      "--marker=\"#\""
      # "--color=bw"
    ];
    changeDirWidgetOptions = [
      # "--preview 'tree -C {} | head -200'"
    ];
    changeDirWidgetCommand = "fd --type d ";
    fileWidgetOptions = [
      # "--preview 'head {}'"
    ];
    fileWidgetCommand = "fd --type f";
    historyWidgetOptions = [
      "--sort"
      "--exact"
    ];
  };
}
