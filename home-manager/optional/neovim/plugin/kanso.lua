
local colors = {
	bg = "#161616",
    black = "#030303",
	darkgray = "#3d3d3d",
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
			zen0 = colors.bg,
			zen1 = colors.black,
			zen2 = "#292929",
			zen3 = colors.darkgray,

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
	BlinkCmpMenuBorder = { fg = colors.darkgray },
	BlinkCmpDocBorder = { fg = colors.darkgray },
	BlinkCmpSignatureHelpBorder = { fg = colors.darkgray },

	FzfLuaBorder = { fg = colors.darkgray },

	-- WhichKey --
	WhichKeyBorder = { bg = colors.bg, fg = colors.darkgray },

	--------------------------- Native ----------------------------
	---------------------------------------------------------------
	-- -- Pmenu --
	-- Pmenu = { fg = colors.lightgray1 },
	-- PmenuThumb = { fg = colors.lightgray },
	PmenuSel = { bg = colors.black},
	-- PmenuSbar = { bg = colors.darkgray },

	-- -- WildMenu --
	-- WildMenu = { bg = colors.bg, fg = colors.lightgray},

	-- Split --
	VertSplit = { bg = colors.bg, fg = colors.darkgray },
	WinSeparator = { bg = colors.bg, fg = colors.darkgray },

	FloatBorder = { bg = colors.bg, fg = colors.darkgray },


}


for group, style in pairs(groups) do
	vim.api.nvim_set_hl(0, group, style)
end
