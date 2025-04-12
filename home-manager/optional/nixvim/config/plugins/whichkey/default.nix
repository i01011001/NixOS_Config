{
  programs.nixvim.plugins.which-key = {
    enable = true;
    settings = {
      delay = 320;
      win = {
        border = "rounded";
      };
      preset = "modern";
    };
  };
}
