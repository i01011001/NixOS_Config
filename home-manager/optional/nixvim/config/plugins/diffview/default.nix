{
  programs.nixvim = {
    plugins.diffview = {
      enable = true;
    };
    keymaps = [
      # {
      #     mode = "n";
      #     key = "<leader>d";
      #     action  = "";
      #     options.desc = "diffview";
      # }
      {
        mode = "n";
        key = "<leader>do";
        action = "<cmd>DiffviewOpen<cr>";
        options.desc = "diffview Open";
      }
      {
        mode = "n";
        key = "<leader>dr";
        action = "<cmd>DiffviewRefresh<cr>";
        options.desc = "diffview refresh";
      }
      {
        mode = "n";
        key = "<leader>dc";
        action = "<cmd>DiffviewClose<cr>";
        options.desc = "diffview close";
      }
      {
        mode = "n";
        key = "<leader>dt";
        action = "<cmd>DiffviewToggleFiles<cr>";
        options.desc = "diffview toggle files";
      }
      {
        mode = "n";
        key = "<leader>df";
        action = "<cmd>DiffviewFocusFiles<cr>";
        options.desc = "diffview focus files";
      }
    ];
  };
}
