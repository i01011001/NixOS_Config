{
  programs.nixvim.colorschemes = {
    catppuccin = {
      enable = true;

      settings = {
        transparent_background = true;
        color_overrides = {
          all = {
            red = "#bf656e";
            crust = "#d09d75";
            yellow = "#dbc68c";
            green = "#83ad84";
            blue = "#6286ad";
            lavender = "#8782af";
            teal = "#7bafaf";

            text = "#cccccc";

            subtext1 = "#f0f0f0";
            subtext0 = "#d8d8d8";
            overlay2 = "#b2b2b2";
            overlay1 = "#a0a0a0";
            overlay0 = "#888888";
            surface2 = "#565656";
            surface1 = "#383838";
            surface0 = "#262626";

            base = "#000000";

            peach = "#d7d8de";
            maroon = "#d7d8dd";
            rosewater = "#d7d8dc";
            flamingo = "#d7d8db";
            pink = "#d7d8da";
            mauve = "#d7d8d9";
            mantle = "#d7d8d8";
            sky = "#d7d9da";
            sapphire = "#d7d9db";
          };
        };
        custom_highlights = ''
                  function(colors)
                  return{
          Normal = { fg = colors.text, bg = colors.none },
          Comment = { fg = colors.overlay0 },
          --menus
          Pmenu = { bg = colors.none, fg = colors.blue },
          PmenuSel = { bg = colors.surface1 },
          PmenuSbar = { bg = colors.base },
          PmenuThumb = { bg = colors.base },

          WildMenu = { bg = colors.base },

          TabLine = { fg = colors.overlay0, bg = colors.base },
          TabLineFill = { fg = colors.overlay2, bg = colors.base },
          TabLineSel = { bg = colors.base },
          WinSeparator = { fg = colors.overlay1, bg = colors.base },

          --line Number
          LineNr = { fg = colors.surface2 },
          CursorLineNr = { fg = colors.overlay2, bold = true },

          --border
          CmpBorder = { fg = colors.overlay0 },
          FloatBorder = { fg = colors.overlay0 },

          --search
          Search = { fg = colors.sapphire, bg = colors.base, underline = true },
          IncSearch = { fg = colors.sapphire, bg = colors.base, underline = true },

          --code
          Include = { fg = colors.blue },
          Identifier = { fg = colors.subtext0, bold=true},
          -- Type = { fg = colors.subtext0, bold = true },
          Define = { fg = colors.red },
          -- PreProc = { fg = colors.subtext0, bold = true },
          Type = { fg = colors.subtext0, bold = true },
          -- StorageClass = { fg = colors.teal, bold = false },
          -- Operator = { fg = colors.subtext0, bold = true },
          Structure = { fg = colors.subtext1 },
          Macro = { fg = colors.subtext0 },
          Variable = {fg = colors.teal},
          -- Statement = { fg = colors.gray_blue },
          -- Conditional = { fg = colors.gray_blue },
          -- Typedef = { fg = colors.white },
          -- Character = { fg = colors.teal},
          Constant = { fg = colors.red },
          Function = {fg = colors.blue},
          Number = { fg = colors.red },
          String = {fg = colors.green},
          Boolean = { fg = colors.red },

          Folded = { fg = colors.overlay1, bg = colors.base },
          FoldColumn = { fg = colors.overlay1, bg = colors.base },

          DiffAdd = {bg = "#1a291f"};
          DiffChange = {bg = "#202843"};
          DiffDelete = {bg = "#2e171a"};
          DiffText = {bg = "#202843", underline = true};
          }
          end
        '';

      };
    };
  };
}
