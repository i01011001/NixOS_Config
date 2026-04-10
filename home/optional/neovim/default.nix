{
  pkgs,
  inputs,
  lib,
  config,
  ...
}: {
  programs.neovim = let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
    # colors = config.lib.stylix.colors;
    # getColor = x: lib.mkForce "#colors.${x}";
  in {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    plugins = with pkgs.vimPlugins; [
      lazydev-nvim
      oil-nvim
      fzf-lua
      blink-cmp
      diffview-nvim
      gitsigns-nvim
      which-key-nvim
      conform-nvim
      nvim-lspconfig
      kanso
      nvim-web-devicons
      nvim-gdb
      # codecompanion-nvim
      nvim-treesitter.withAllGrammars
      markdown-preview-nvim
      # render-markdown
      # harpoon2
      # koda
    ];

    # ${builtins.readFile ./plugin/lsp.lua}
    # ${builtins.readFile ./plugin/colorscheme.lua}
    # ${builtins.readFile ./plugin/lualine.lua}
    # ${builtins.readFile ./plugin/vscode.lua}
    # ${builtins.readFile ./plugin/noice.lua}
    # ${builtins.readFile ./plugin/kanagawa.lua}
    # ${builtins.readFile ./plugin/nightfox.lua}
    # ${builtins.readFile ./plugin/harpoon2.lua}
    # ${builtins.readFile ./plugin/nightfox.lua}
    # ${builtins.readFile ./plugin/treesitter.lua}
    # ${builtins.readFile ./plugin/codecompanion.lua}
    initLua = ''
      ${builtins.readFile ./options.lua}
      ${builtins.readFile ./plugin/diffview.lua}
      ${builtins.readFile ./plugin/completion.lua}
      ${builtins.readFile ./plugin/format.lua}
      ${builtins.readFile ./plugin/fzf-lua.lua}
      ${builtins.readFile ./plugin/gitsigns.lua}
      ${builtins.readFile ./plugin/oil.lua}
      ${builtins.readFile ./plugin/lspconfig.lua}
      ${builtins.readFile ./plugin/whichkey.lua}
      ${builtins.readFile ./plugin/kanso.lua}
      ${builtins.readFile ./plugin/markdown.lua}
    '';
  };
  imports = [
    # ./theme/default.nix
  ];
}
