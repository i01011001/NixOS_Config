--[[
Improved Configuration:
1.  A dedicated color palette table makes it easy to change colors in one place.
2.  The `kanso.setup` call now uses its built-in `overrides` function, which is the
    intended way to customize a colorscheme. This is cleaner than setting highlights
    manually after loading.
3.  Unnecessary commands like `hi clear` and `syntax reset` are removed, as the
    `:colorscheme` command handles this automatically.
4.  Highlight groups that should look the same (like VertSplit and WinSeparator)
    are linked using `link = "GroupName"`. This is more efficient and easier to maintain.
5.  All custom highlight definitions are now neatly organized within the setup function.
--]]

-- 1. Define a central color palette for easy management.
local colors = {
    -- Base background tones from your original config
    bg = "#121212",
    bg_alt1 = "#1E1e1e",
    bg_alt2 = "#2a2a2a",

    -- A neutral color for borders and inactive elements
    border = "#4e4e4e",
}

-- 2. Configure and set up the colorscheme.
require("kanso").setup({
    bold = true,
    italics = true,
    undercurl = true,
    transparent = true, -- Keep the background transparent
    commentStyle = { italic = true },
    keywordStyle = { italic = true },

    -- The `overrides` function is the ideal place for your customizations.
    -- It receives the theme's color palette and returns a table of custom highlights.
    overrides = function(theme_colors)
        return {
            ---------------------------------------------------------------
            -- Plugin Highlights
            ---------------------------------------------------------------
            -- Use your custom palette for consistent borders
            BlinkCmpMenuBorder = { fg = colors.border },
            BlinkCmpDocBorder = { fg = colors.border },
            BlinkCmpSignatureHelpBorder = { fg = colors.border },
            FzfLuaBorder = { fg = colors.border },
            WhichKeyBorder = { fg = colors.border, bg = colors.bg },

            ---------------------------------------------------------------
            -- Native Neovim UI Highlights
            ---------------------------------------------------------------
            -- Completion menu
            PmenuSel = { bg = colors.bg_alt1 },

            -- Window splits and separators
            -- Define VertSplit once, then link WinSeparator to it.
            VertSplit = { fg = colors.border, bg = colors.bg },
            WinSeparator = { link = "VertSplit" },

            -- Floating windows and popups
            NormalFloat = { bg = colors.bg },
            FloatBorder = { fg = colors.border, bg = colors.bg },

            -- Other UI elements
            Folded = { bg = colors.bg },
        }
    end,
})

-- 3. Load the colorscheme.
-- This command automatically handles clearing old highlights before applying the new theme.
vim.cmd("colorscheme kanso-zen")
