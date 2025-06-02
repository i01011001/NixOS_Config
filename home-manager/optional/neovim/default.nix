{
  pkgs,
  inputs,
  ...
}: {
  programs.neovim = 
let
    toLua = str:"lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n"
in
  {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    # package = import ../../../nixos/optional/nixcat/default.nix {
    #   inherit pkgs;
    #   inherit (inputs) nixCats;
    # };

    plugins = with pkgs.vimPlugins;[
        lazydev-nvim
        oil-nvim
        fzf-lua
        blink-cmp
        diffview-nvim
        gitsigns-nvim
        markdown-preview-nvim
        which-key-nvim
        conform-nvim
        harpoon2
    ];

    extraLuaConfig = '' 
        ${builtins.readFile ./options.lua}
    '';
  };
}
