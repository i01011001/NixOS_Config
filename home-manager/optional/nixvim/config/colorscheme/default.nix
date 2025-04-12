{
  programs.nixvim = {
    # extraConfigLua = builtins.readFile ./colorscheme.lua;
    extraConfigLua = builtins.readFile ./nano.lua;
  };
}
