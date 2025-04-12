local colors = {
	bg = "#000000",
	fg = "#F9f9f9",
	darkgray0= "#141414",
	darkgray1= "#2B2B2B",
	darkgray2= "#343434",
	gray = "#656565",
	lightgray0= "#939393",
	lightgray1= "#ADADAD",
	lightgray2= "#D0D0D0",

	red = "#bf656e",
	green= "#83ad84",
	yellow = "#dbcc8c",
	orange     = "#d0996c",
	blue = "#6286ad",
	purple = "#8782af",
	cyan= "#7dafac",

	diffadd = "#1c2c21",
	diffchange = "#1e253e",
	diffdelete = "#3b1b20",
}

local groups = {
	--------------------------- Plugin ----------------------------
	---------------------------------------------------------------
	-- Telescope --
	TelescopeSelection = {bg = colors.drakgray0},
	TelescopeBorder =  {bg = colors.bg, fg = colors.darkgray2},
	TelescopeTitle =  {bg = colors.bg, fg = colors.darkgray2},
	TelescopePromtNormal = {bg = colors.bg},
	TelescopePromtPrefix = {bg = colors.bg},
	TelescopePromtTitle = {bg = colors.bg},
	TelescopeMatching= {fg = colors.blue},
	TelescopePreview= {fg = colors.blue},

	-- Cmp --
	CmpItemAbbrMatch = {fg = colors.blue},
	CmpItemAbbr= {fg = colors.lightgray2},

	BlinkCmpLabelMatch = {fg = colors.blue};

	-- WhichKey --
	WhichKeyBorder = {bg = colors.bg, fg = colors.darkgray2},

	--------------------------- Native ----------------------------
	---------------------------------------------------------------
	-- Pmenu --
	Pmenu = {fg = colors.lightgray1},
	PmenuThumb = {fg = colors.lightgray2},
	PmenuSel = {bg = colors.darkgray1},
	PmenuSbar = {bg = colors.darkgray2},

	-- WildMenu --
	WildMenu = {bg = colors.bg, fg = colors.lightgray0},

	-- Diff --
	DiffAdd = {bg = colors.diffadd},
	DiffChange = {bg = colors.diffchange},
	DiffDelete = {bg = colors.diffdelete},
	DiffText = {bg = colors.diffchange, underline = true},

	-- Split --
	VertSplit = {bg = colors.bg, fg = colors.darkgray2},
	WinSeparator = {bg = colors.bg, fg = colors.darkgray2},

	-- Float --
	NormalFloat = {bg = colors.bg, fg=colors.lightgray2},
	FloatBorder= {bg = colors.bg, fg=colors.darkgray2},

	-- StatusLine --
	StatusLine = {bg = colors.bg, fg = colors.darkgray2},
	StatusLineNC = {bg = colors.bg, fg = colors.darkgray2},

	-- Search --
	Search = {bg = colors.fg , fg = colors.bg},
	IncSearch = {bg = colors.fg , fg = colors.bg},

	-- Extra --
	CursorLine = {bg = colors.darkgray0},
	Normal = {bg = colors.bg},
	Comments = {fg = colors.lightgray0, italic = true},
	Comment= {fg = colors.lightgray0, italic = true},
	Folded = {},

	-- Diagnositc --
	DiagnosticError = { bg = colors.bg, fg = colors.red },
	DiagnosticWarn = { bg = colors.bg, fg = colors.orange},
	DiagnosticInfo = { bg = colors.bg, fg = colors.yellow},
	DiagnosticHint = { bg = colors.bg, fg = colors.blue},
	DiagnosticOk = { bg = colors.bg, fg = colors.green},
	DiagnosticUnderlineError = { bg = colors.bg, fg = colors.red },
	DiagnosticUnderlineWarn = { bg = colors.bg, fg = colors.orange},
	DiagnosticUnderlineInfo = { bg = colors.bg, fg = colors.yellow},
	DiagnosticUnderlineHint = { bg = colors.bg, fg = colors.blue},
	DiagnosticUnderlineOk= { bg = colors.bg, fg = colors.green},

	-- Error --
	Error     = { bg = colors.bg, fg = colors.red },
	ErrorMsg     = { bg = colors.bg, fg = colors.red },
	Exception = {fg = colors.white },


	Character = { fg=colors.green},
	Boolean = { fg=colors.purple},
	Constant = { fg=colors.lightgray2},
	Define = { fg=colors.lightgray2},
	Field = { fg=colors.cyan},
	Function = { fg=colors.blue},
	Identifier = { fg=colors.lightgray2},
	Include =  { fg=colors.blue},
	Macro = { fg=colors.lightgray1},
	Number = { fg=colors.purple},
	Property = {fg = colors.lightgray2},
	SpecialChar = {fg = colors.lightgray2},
	String = { fg=colors.green},
	Structure = { fg=colors.blue},
	Text = {fg = colors.lightgray2},
	Type = { fg=colors.cyan},
	Variable = { fg=colors.lightgray1},
	-- Operator = { fg=colors.blue},

	Directory = {fg = colors.blue},
	Special = {fg = colors.blue},
	Visual = {bg = colors.darkgray1},
}


vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
	vim.api.nvim_command("syntax reset")
end

for group, style in pairs(groups) do
	vim.api.nvim_set_hl(0, group, style)
end
