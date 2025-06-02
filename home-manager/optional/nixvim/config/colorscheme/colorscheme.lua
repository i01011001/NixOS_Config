local hl = vim.api.nvim_set_hl
local color = {
  base00 = "#000000",
  base01 = "#181818",
  base02 = "#2F2F2F",
  base03 = "#444444",
  base04 = "#898989",
  base05 = "#ABABAB",
  base06 = "#d4d4d4",
  base07 = "#F9f9f9",
  base08 = "#bf656e",
  base09 = "#83ad84",
  base0A = "#dbc68c",
  base0B = "#6286ad",
  base0C = "#8782af",
  base0D = "#7dafac",
  base0E = "#83ad84",
  base0F = "#BBB6B6",
}

local colors = {
	bg = "#000000",
	fg = "#F9f9f9",
	darkgray0= "#181818",
	darkgray1= "#3D3D3D",
	darkgray2= "#505050",
	lightgray0= "#898989",
	lightgray1= "#ABABAB",
	lightgray2= "#D0D0D0",
	red = "#bf656e",
	green= "#83ad84",
	yellow = "#dbc68c",
	blue = "#6286ad",
	purple = "#8782af",
	cyan= "#7dafac",
}

-- Telescope
hl(0, "TelescopeSelection", {bg = color.base01})
-- hl(0, "TelescopePromptBorder", {bg = color.base00, fg = color.base02})
-- hl(0, "TelescopePreviewBorder", {bg = color.base00, fg = color.base02})
-- hl(0, "TelescopeResultBorder", {bg = color.base00, fg = color.base02})
-- hl(0, "TelescopeResultsBorder", {bg = color.base00, fg = color.base02})
hl(0, "TelescopeBorder", {bg = color.base00, fg = color.base02})

-- hl(0, "TelescopePromptTitle", {bg = color.base00, fg = color.base03})
-- hl(0, "TelescopePreviewTitle", {bg = color.base00, fg = color.base03})
-- hl(0, "TelescopeResultTitle", {bg = color.base00, fg = color.base03})
-- hl(0, "TelescopeResultsTitle", {bg = color.base00, fg = color.base03})
hl(0, "TelescopeTitle", {bg = color.base00, fg = color.base03})

hl(0, "TelescopePromptNormal", {bg = color.base00})
hl(0, "TelescopePromptPrefix", {bg = color.base00})
hl(0, "TelescopePreviewTitle", {bg = color.base00})

-- Menu
hl(0, "Pmenu", {fg = color.base02})
hl(0, "PmenuThumb", { fg = color.base05})
hl(0, "PmenuSel", {bg = color.base01})

-- CMP
hl(0, "CmpItemAbbrMatch", {fg = color.base0B})
hl(0, "CmpItemAbbr", {fg = color.base05})
-- hl(0, "CmpItemAbbrDefault", {fg = color.base05})

-- Number
hl(0, "CursorLine", {bg = color.base01})

-- Others
hl(0, "VertSplit", {fg = color.base02, bg = color.base00})
hl(0, "WinSeparator", {fg = color.base02, bg = color.base00})
hl(0, "NormalFloat", {fg = color.base02, bg = color.base00})
hl(0, "FloatBorder", {fg = color.base02, bg = color.base00})

hl(0, "WhichKeyBorder", {fg = color.base02, bg = color.base00})

hl(0, "StatusLine", {fg = color.base02, bg = color.base00})
hl(0, "StatusLineNC", {fg = color.base02, bg = color.base00})
hl(0, "WinSeparator", {fg = color.base02, bg = color.base00})

-- Diff
hl(0, "DiffAdd", {bg = "#1a291f"})
hl(0, "DiffChange", {bg = "#202843"})
hl(0, "DiffDelete", {bg = "#2e171a"})
hl(0, "DiffText", {bg = "#202843", underline= true})
hl(0, "DiffViewDiffText", {bg = "#202843", underline= false})

hl(0, "WildMenu", {bg = color.base00, fg=color.base05})

hl(0, "TSText", { fg=color.base07})
hl(0, "TSProperty", { fg=color.base07})
hl(0, "TSFeild", { fg=color.base07})

hl(0, "TSInclude", { fg=color.base0B})
hl(0, "TSIdentifier", { fg=color.base07})
hl(0, "TSDefine", { fg=color.base07})
hl(0, "TSType", { fg=color.base07})
hl(0, "TSStructure", { fg=color.base06})
hl(0, "TSMacro", { fg=color.base06})
hl(0, "TSVariable", { fg=color.base06})
hl(0, "TSConstant", { fg=color.base08})
hl(0, "TSFunction", { fg=color.base0B})
hl(0, "TSNumber", { fg=color.base08})
hl(0, "TSString", { fg=color.base09})
hl(0, "TSBoolean", { fg=color.base08})
hl(0, "TSCharacter", { fg=color.base06})
hl(0, "TSCharacter", { fg=color.base06})

hl(0, "Include", { fg=color.base0B})
hl(0, "Identifier", { fg=color.base07})
hl(0, "Define", { fg=color.base0A})
hl(0, "Type", { fg=color.base07})
hl(0, "Typedef", { fg=color.base07})
hl(0, "Structure", { fg=color.base06})
hl(0, "Macro", { fg=color.base06})
hl(0, "Variable", { fg=color.base0D})
hl(0, "Constant", { fg=color.base08})
hl(0, "Function", { fg=color.base0B})
hl(0, "Number", { fg=color.base08})
hl(0, "String", { fg=color.base09})
hl(0, "Boolean", { fg=color.base08})
hl(0, "Character", { fg=color.base06})
hl(0, "Operator", { fg=color.base06})
hl(0, "Statement", { fg=color.base06})


hl(0, "SpecialChar", { fg=color.base07})

hl(0, "Search", { fg=color.base07, underline = true, bg = color.base00, fg = color.base07})
hl(0, "IncSearch", { fg=color.base07, underline = true, bg = color.base00, fg = color.base07})


hl(0, "Normal", {bg = color.base00})

hl(0, "Comment", { fg=color.base04})

hl(0, "Folded", {})
