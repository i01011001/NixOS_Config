{
  pkgs,
  nixCats,
  ...
}: let
  # get the nixCats library with the builder function (and everything else) in it
  utils = import nixCats;
  # path to your new .config/nvim
  luaPath = ./.;

  # see :help nixCats.flake.outputs.categories
  categoryDefinitions = {
    pkgs,
    settings,
    categories,
    extra,
    name,
    mkPlugin,
    ...
  } @ packageDef: {
    lspsAndRuntimeDeps = {
      general = with pkgs; [
        tree-sitter
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
      # lua = with pkgs; [
      #   lua-language-server
      #   stylua
      # ];
      # nix = with pkgs; [
      #   nil
      #   nixd
      #   alejandra
      # ];
      # c = with pkgs; [
      #   clang-tools
      # ];
      # js = with pkgs; [
      #   typescript-language-server
      # ];
      # md = with pkgs; [
      #   marksman
      # ];
      # go = with pkgs; [
        # gopls
      # ];
      # py = with pkgs; [
      #   pyright
      # ];
    };

    # This is for plugins that will load at startup without using packadd:
    startupPlugins = {
      general = with pkgs.vimPlugins; [
        oil-nvim
        fzf-lua
        blink-cmp
        diffview-nvim
        gitsigns-nvim
        markdown-preview-nvim
        which-key-nvim
        conform-nvim
        nvim-treesitter-textobjects
        nvim-treesitter.withAllGrammars
      ];

      # lsp = with pkgs.vimPlugins; [
      #   conform-nvim
      # ];
      #
      # treesitter = with pkgs.vimPlugins; [
      #   nvim-treesitter-textobjects
      #   nvim-treesitter.withAllGrammars
      # ];
    };

    # not loaded automatically at startup.
    # use with packadd and an autocommand in config to achieve lazy loading
    optionalPlugins = {
      general = with pkgs.vimPlugins; [
      ];
    };
  };

  # see :help nixCats.flake.outputs.packageDefinitions
  packageDefinitions = {
    # These are the names of your packages
    # you can include as many as you wish.
    # each of these sets are also written into the nixCats plugin for querying within lua.
    nvim = {
      pkgs,
      mkPlugin,
      ...
    }: {
      settings = {
        suffix-path = true;
        suffix-LD = true;
        # see :help nixCats.flake.outputs.settings
        # IMPORTANT:
        # your aliases may not conflict with other packages.
        # aliases = [ "vim" ];
      };
      # and a set of categories that you want
      # All categories you wish to include must be marked true
      categories = {
        general = true;
      };
      # anything else to pass and grab in lua with `nixCats.extra`
      extra = {};
    };
  };

  # We will build the one named nvim here and export that one.
  defaultPackageName = "nvim";
  # return our package!
in
  utils.baseBuilder luaPath {inherit pkgs;} categoryDefinitions packageDefinitions defaultPackageName
# NOTE: or to return a set of all of them:
# `in utils.mkAllPackages (utils.baseBuilder luaPath { inherit pkgs; } categoryDefinitions packageDefinitions defaultPackageName)`
# NOTE: you may call .overrideNixCats on the resulting package or packages
# to construct different packages from
# your packageDefinitions from the resulting derivation of this expression!
# `finalPackage.overrideNixCats { name = "aDifferentPackage"; }`
# see :h nixCats.overriding

