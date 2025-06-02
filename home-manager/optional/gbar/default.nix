{
  programs.gBar = {
    enable = true;
    config = {
      Location = "L";
      # EnableSNI = true;
      # SNIIconSize = {
      #   Discord = 26;
      #   OBS = 23;
      # };
      WorkspaceSymbols = [" " " "];
    };

    extraSCSS = builtins.readFile ./style.scss;
  };
}
