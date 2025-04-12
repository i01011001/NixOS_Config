{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.nvzone-typr
    ];

    extraConfigLua = ''
            require("typr"):setup()
      	'';
  };

}
