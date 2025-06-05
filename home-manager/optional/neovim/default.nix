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

    colors = config.lib.stylix.colors;
    getColor = x: lib.mkForce "#colors.${x}";
  in {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraPackages = with pkgs; [
      # luajitPackages.lua-lsp
      # rnix-lsp
      lua-language-server
      stylua
      nil
      nixd
      alejandra
      clang-tools
      typescript-language-server
      marksman
      gopls
      pyright
    ];

    plugins = with pkgs.vimPlugins; [
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
      nvim-treesitter
      nvim-lspconfig
      nordic
      # (onedark-nvim.overrideAttrs (oldAttrs: {
      #   meta = oldAttrs.meta // { skipNeovimRequireCheck = true; };
      # }))
    ];

    # ${builtins.readFile ./plugin/lsp.lua}
    # ${builtins.readFile ./plugin/colorscheme.lua}
    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
      ${builtins.readFile ./plugin/diffview.lua}
      ${builtins.readFile ./plugin/completion.lua}
      ${builtins.readFile ./plugin/format.lua}
      ${builtins.readFile ./plugin/fzf-lua.lua}
      ${builtins.readFile ./plugin/harpoon2.lua}
      ${builtins.readFile ./plugin/gitsigns.lua}
      ${builtins.readFile ./plugin/markdown.lua}
      ${builtins.readFile ./plugin/oil.lua}
      ${builtins.readFile ./plugin/lspconfig.lua}
    '';
  };
  imports = 
  [
        ./theme/default.nix
  ];
}
