{
  programs.fzf = {
    enable = true;
    # enableZshIntegration = true;
    enableBashIntegration = true;
    # colors = {
    #   bg = "#181818";
    #   "bg+" = "#181818";
    #   fg = "#dddddd";
    #   "fg+" = "#dddddd";
    # };

    defaultOptions = [
      "--height 40%"
      "--info=inline"
      "--layout=reverse"
      "--no-scrollbar"
      "--no-separator"
      "--highlight-line"
      "--marker=\"#\""
    ];

    defaultCommand = "fd --type file --hidden ";
    changeDirWidgetCommand = "fd --type d ";
    fileWidgetCommand = "fd --type f";

    fileWidgetOptions = [
    ];
    historyWidgetOptions = [
    ];
    changeDirWidgetOptions = [
    ];
  };
}
