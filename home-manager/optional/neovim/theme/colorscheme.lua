
local groups = {
    --Blink--
    BlinkCmpMenuBorder = { fg = colors.dark_1 },
    BlinkCmpMenu = { fg = colors.light_2 },
    BlinkCmpDocBorder = { fg = colors.dark_1 },
    BlinkCmpSignatureHelpBorder = { fg = colors.dark_1},
    BlinkCmpDoc = { fg = colors.light_2 },
    BlinkCmpLabelDescription = { fg = colors.light_0},
    BlinkCmpLabelDetail = { fg = colors.light_0 },
    BlinkCmpGhostText = { fg = colors.light_1 },
    BlinkCmpLabelMatch = { fg = colors.blue },

    --Whichkey--
    WhichKeyBorder = { bg = colors.dark_0, fg = colors.dark_1 },

    --------------------------- Native ----------------------------
    ---------------------------------------------------------------
    -- Pmenu --
    Pmenu = { fg = colors.light_1 },
    PmenuThumb = { fg = colors.light_2 },
    PmenuSel = { bg = colors.dark_1 },
    PmenuSbar = { bg = colors.dark_2 },

    -- WildMenu --
    WildMenu = { bg = colors.dark_0, fg = colors.light_0 },

    -- Diff --
    DiffAdd = { bg = colors.diffadd },
    DiffChange = { bg = colors.diffchange },
    DiffDelete = { bg = colors.diffdelete },
    DiffText = { bg = colors.difftext},

    -- Split --
    VertSplit = { bg = colors.dark_0, fg = colors.dark_2 },
    WinSeparator = { bg = colors.dark_0, fg = colors.dark_2 },

    -- Float --
    NormalFloat = { bg = colors.dark_0, fg = colors.light_2 },
    FloatBorder = { bg = colors.dark_0, fg = colors.dark_1 },

    -- StatusLine --
    StatusLine = { bg = colors.dark_0, fg = colors.dark_2 },
    StatusLineNC = { bg = colors.dark_0, fg = colors.dark_2 },

    -- Search --
    Search = { bg = colors.fg, fg = colors.dark_0 },
    IncSearch = { bg = colors.fg, fg = colors.dark_0 },

    -- Extra --
    CursorLine = { bg = colors.dark_0 },
    Normal = { bg = colors.dark_0 },
    Comments = { fg = colors.light_0, italic = true },
    Comment = { fg = colors.light_0, italic = true },
    Folded = {},

    DiagnosticError = { bg = colors.dark_0, fg = colors.red },
    DiagnosticWarn = { bg = colors.dark_0, fg = colors.orange },
    DiagnosticInfo = { bg = colors.dark_0, fg = colors.yellow },
    DiagnosticHint = { bg = colors.dark_0, fg = colors.blue },
    DiagnosticOk = { bg = colors.dark_0, fg = colors.green },
    DiagnosticUnderlineError = { bg = colors.dark_0, fg = colors.red },
    DiagnosticUnderlineWarn = { bg = colors.dark_0, fg = colors.orange },
    DiagnosticUnderlineInfo = { bg = colors.dark_0, fg = colors.yellow },
    DiagnosticUnderlineHint = { bg = colors.dark_0, fg = colors.blue },
    DiagnosticUnderlineOk = { bg = colors.dark_0, fg = colors.green },

    -- Error --
    Error = { bg = colors.dark_0, fg = colors.red },
    ErrorMsg = { bg = colors.dark_0, fg = colors.red },
    Exception = { fg = colors.white },

    Character = { fg = colors.green },
    Boolean = { fg = colors.violet },
    Constant = { fg = colors.light_2 },
    Define = { fg = colors.light_2 },
    Field = { fg = colors.cyan },
    Function = { fg = colors.blue },
    Identifier = { fg = colors.light_2 },
    Include = { fg = colors.blue },
    Macro = { fg = colors.light_1 },
    Number = { fg = colors.violet },
    Property = { fg = colors.light_2 },
    SpecialChar = { fg = colors.light_2 },
    String = { fg = colors.green },
    Structure = { fg = colors.blue },
    Text = { fg = colors.light_2 },
    Type = { fg = colors.cyan },
    Variable = { fg = colors.light_1 },
    -- Operator = { fg=colors.blue},

    Directory = { fg = colors.blue },
    Special = { fg = colors.blue },
    Visual = { bg = colors.dark_1 },
};

vim.api.nvim_command("hi clear")

if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end

for group, style in pairs(groups) do
   vim.api.nvim_set_hl(0, group, style)
end
