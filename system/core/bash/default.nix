{
  programs.bash = {
      enable = true;
      enableLsColors = true;
      # blesh.enable = true;
      completion.enable = true;
      shellInit =builtins.readFile ./bashrc;
  };
}
