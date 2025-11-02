{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      settings = {
        defaults = {
          layout_strategy = "buffer";
          # layout_config = {
          # 	botton_pane = {
          # 		height = 0.4;
          # 		preview_cutoff = 40;
          # 		prompt_position = "top";
          # 		width = 0.5;
          # 	};
          # };
          borderchars = [
            "─"
            "│"
            "─"
            "│"
            "╭"
            "╮"
            "╯"
            "╰"
          ];
        };
      };
      extensions.fzf-native = {
        enable = true;
      };
      keymaps = {
        "<leader><space>" = {
          action = "find_files";
          options.desc = "Find project files";
        };
        "<leader>/" = {
          action = "live_grep";
          options.desc = "Grep (root dir)";
        };
        "<leader>:" = {
          action = "command_history";
          options.desc = "Command History";
        };
        "<leader>b" = {
          action = "buffers";
          options.desc = "+buffer";
        };
        "<leader>fr" = {
          action = "oldfiles";
          options.desc = "Recent";
        };
        "<leader>fb" = {
          action = "buffers";
          options.desc = "Buffers";
        };
        "<leader>gf" = {
          action = "git_files";
          options.desc = "Search git files";
        };
        "<leader>gc" = {
          action = "git_commits";
          options.desc = "Commits";
        };
        "<leader>gp" = {
          action = "git_bcommits";
          options.desc = "Branch Commits";
        };
        "<leader>gs" = {
          action = "git_status";
          options.desc = "Status";
        };
        "<leader>gb" = {
          action = "git_branches";
          options.desc = "Braches";
        };
        "<leader>sb" = {
          action = "current_buffer_fuzzy_find";
          options.desc = "Buffer";
        };
        "<leader>sc" = {
          action = "command_history";
          options.desc = "Command History";
        };
        "<leader>sd" = {
          action = "diagnostics";
          options.desc = "Workspace diagnostics";
        };
        "<leader>sh" = {
          action = "highlights";
          options.desc = "Search Highlight Groups";
        };
        "<leader>r" = {
          action = "lsp_references";
          options.desc = "LSP references";
        };
      };
    };

    extraConfigLua = builtins.readFile ./telescope.lua;
  };
}
