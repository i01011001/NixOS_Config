{
  programs.nixvim = {
    opts = {
      # number = true;
      relativenumber = true;
      cursorline = true;
      cursorlineopt = "number";

      splitbelow = true;
      splitright = true;

      splitkeep = "screen";
      termguicolors = true;
      showmode = true;
      incsearch = true;
      hlsearch = false;
      ignorecase = true;
      smartcase = true;

      shiftwidth = 4;
      tabstop = 4;
      softtabstop = 4;
      expandtab = false;

      showtabline = 0;
      signcolumn = "yes";
      ttyfast = true;

      clipboard = "unnamedplus";

      smartindent = true;
      breakindent = true;
      scrolloff = 8;

      foldcolumn = "0";
      foldenable = true;
      foldtext = "";
      foldnestmax = 4;
      # foldlevel = 99;
      # foldlevelstart = 99;

      foldmethod = "expr";
      foldexpr = "v:lua.vim.treesitter.foldexpr()";
      # foldexpr = "v:lua.vim.lsp.foldexpr()";
      linebreak = true;

      wrap = false;
      spell = false;
      swapfile = false;
      timeoutlen = 300;
      mouse = "";

      # Enable persistent undo history
      backup = false;
      undofile = true;

      updatetime = 50; # faster completion (4000ms default)

      # Set completeopt to have a better completion experience
      completeopt = [
        "menuone"
        "noselect"
        "noinsert"
      ]; # mostly just for cmp

      # Set encoding type
      encoding = "utf-8";
      fileencoding = "utf-8";
    };
    extraConfigVim = ''
      set wildoptions-=pum
      set laststatus=0
      set statusline=%{repeat('─',winwidth('.'))}
    '';
  };
}
