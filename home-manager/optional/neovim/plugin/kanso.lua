
local colors = {
	gray0 = "#121212",
    gray1 = "#212121",
    gray2 = "#303030";
	gray3 = "#4d4d4d",
}

-- Default options:
require("kanso").setup({
	bold = true, -- enable bold fonts
	italics = true, -- enable italics
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = {},
	typeStyle = {},
	transparent = true, -- do not set background color
	dimInactive = false, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {
			zen0 = colors.gray0,
			zen1 = colors.gray1,
			zen2 = colors.gray2,
			zen3 = colors.gray3,

		},
	},
	overrides = function(colors) -- add/modify highlights
		return {}
	end,
})

vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
	vim.api.nvim_command("syntax reset")
end
-- setup must be called before loading
vim.cmd("colorscheme kanso-zen")

local groups = {
	--------------------------- Plugin ----------------------------
	---------------------------------------------------------------
	---Blink---
	BlinkCmpMenuBorder = { fg = colors.gray3 },
	BlinkCmpDocBorder = { fg = colors.gray3 },
	BlinkCmpSignatureHelpBorder = { fg = colors.gray3 },

	FzfLuaBorder = { fg = colors.gray3 },

	-- WhichKey --
	WhichKeyBorder = { bg = colors.gray0, fg = colors.gray3 },

	--------------------------- Native ----------------------------
	---------------------------------------------------------------
	-- -- Pmenu --
	-- Pmenu = { fg = colors.lightgray1 },
	-- PmenuThumb = { fg = colors.lightgray },
	PmenuSel = { bg = colors.gray1},
	-- PmenuSbar = { bg = colors.darkgray },

	-- -- WildMenu --
	-- WildMenu = { bg = colors.bg, fg = colors.lightgray},

	-- Split --
	VertSplit = { bg = colors.gray0, fg = colors.gray3 },
	WinSeparator = { bg = colors.gray0, fg = colors.gray3 },

	FloatBorder = { bg = colors.gray0, fg = colors.gray3 },
	Folded = { bg = colors.gray0},
}

for group, style in pairs(groups) do
	vim.api.nvim_set_hl(0, group, style)
end
