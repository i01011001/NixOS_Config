{
  programs.nixvim = {
    plugins.blink-cmp = {
      enable = true;
      settings = {
        completion = {
          keyword = {
            border = "rounded";
            winhighlight = "FloatBorder:FloatBorder";
            scrollbar = false;
          };
          menu = {
            border = "rounded";
            winhighlight = "FloatBorder:FloatBorder";
            scrollbar = false;
          };
          documentation = {
            auto_show = false;
            window = {
              border = "rounded";
              winhighlight = "FloatBorder:FloatBorder";
            };

            ghost_text = {
              enabled = true;
            };
          };
        };
        accept = {
          auto_brackets = {
            enabled = false;
          };
        };
        highlight = {
          use_nvim_cmp_as_default = true;
        };
        keymap = {
          preset = "default";
        };
        trigger = {
          signature_help = {
            enabled = true;
          };
        };
        keymap = {
          "<C-b>" = [
            "scroll_documentation_up"
            "fallback"
          ];
          "<C-e>" = [
            "hide"
          ];
          "<C-f>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          "<C-n>" = [
            "select_next"
            "fallback"
          ];
          "<C-p>" = [
            "select_prev"
            "fallback"
          ];
          "<C-space>" = [
            "show"
            "show_documentation"
            "hide_documentation"
          ];
          "<C-y>" = [
            "select_and_accept"
          ];
          "<Down>" = [
            "select_next"
            "fallback"
          ];
          "<S-Tab>" = [
            "snippet_backward"
            "fallback"
          ];
          "<Tab>" = [
            "snippet_forward"
            "fallback"
          ];
          "<Up>" = [
            "select_prev"
            "fallback"
          ];
        };
      };
    };
    extraConfigLua = '''';
  };
}
