{
  config,
  pkgs,
  inputs,
  ...
}:
let

in
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ### plugins
    # ./config/plugins/lsp
    ./config/plugins/telescope
    ./config/plugins/whichkey
    ./config/plugins/oil
    ./config/plugins/harpoon
    ./config/plugins/markdown-preview
    ./config/plugins/web-devicons
    ./config/plugins/diffview
    ./config/plugins/surround
    # ./config/plugins/cmp
    ./config/plugins/typr
    # ./config/plugins/remote-nvim
    # ./config/plugins/distant
    # ./config/plugins/colorizer
    # ./config/plugins/blink
    # ./config/plugins/fzf-lua
    # ./config/plugins/gitsigns

    ### basics
    ./config/colorscheme
    ./config/keymaps
    ./config/options
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    diagnostics = {
      float = {
        border = "rounded";
      };
      # virtual_lines.only_current_line = false;
      virtual_text = false;
      # signs = false;

    };
    package = inputs.neovim-nightly.packages.${pkgs.system}.default;

    performance = {
      byteCompileLua = {
        enable = true;
        nvimRuntime = true;
        configs = true;
        plugins = true;
      };
    };
    # nixpkgs.overlays= [
    # 	(finals: prev: {
    # 	 volt = finals.vimUtils.buildVimPlugin {
    # 	 name = "volt";
    # 	 src = pkgs.fetchFromGitHub {
    # 	 owner = "nvzone";
    # 	 repo = "volt";
    # 	 rev = "main";
    # 	 hash = "sha256-2SO847Un74kNFGxARaebB+WCCgexnaJdjUkQLZ6ROQ8=";
    # 	 };
    # 	 };
    # 	 })
    #
    # 	(finals: prev: {
    # 	 typr = finals.vimUtils.buildVimPlugin {
    # 	 name = "typr";
    # 	 src = pkgs.fetchFromGitHub {
    # 	 owner = "nvzone";
    # 	 repo = "typr";
    # 	 rev = "main";
    # 	 hash = "sha256-2SO847Un74kNFGxARaebB+WCCgexnaJdjUkQLZ6ROQ8=";
    # 	 };
    # 	 };
    # 	 })
    #
    # ];
    # extraPlugins = [
    # 	(pkgs.vimPlugins.nvzone-volt)
    # 	(pkgs.vimUtils.buildVimPlugin {
    # 	 name = "typr";
    # 	 src = pkgs.fetchFromGitHub {
    # 	 owner = "nvzone";
    # 	 repo = "typr";
    # 	 rev = "main";
    # 	 hash = "sha256-iVLxQeQqpqohCPZAE3SxReEo3KmWAo+xGAiJJnRBbUE=";
    # 	 };
# 	 })
# ];

	extraConfigLua = builtins.readFile ./extraConfig.lua;
  };
}
