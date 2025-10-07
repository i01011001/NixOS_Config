local hl = vim.api.nvim_set_hl
local color = {
  base00 = "#000000",
  base01 = "#181818",
  base02 = "#2F2F2F", -- Original border foreground
  base03 = "#444444", -- Brighter border foreground
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


hl(0, "Normal", {bg = color.base00, fg = color.base07})
hl(0, "CursorLine", {bg = color.base01})
hl(0, "CursorLineNr", {fg = color.base06, bg = color.base01})
hl(0, "LineNr", {fg = color.base04, bg = "none"})
hl(0, "NonText", {fg = color.base03})

-------------------------------------------
-- FZF-LUA HIGHLIGHTS
-------------------------------------------
hl(0, "FzfLuaNormal", { bg = color.base00, fg = color.base05 })
hl(0, "FzfLuaBorder", { fg = color.base03, bg = color.base00 }) -- Changed from base02 to base03
hl(0, "FzfLuaSelected", { bg = color.base01 })
hl(0, "FzfLuaPrompt", { fg = color.base0B, bold = true })
hl(0, "FzfLuaInput", { fg = color.base07 })
hl(0, "FzfLuaMatch", { fg = color.base08, bold = true })
hl(0, "FzfLuaCursor", { fg = color.base07, bg = color.base03 })
hl(0, "FzfLuaCwd", { fg = color.base04 })
hl(0, "FzfLuaScrollbar", { fg = color.base03, bg = color.base01 })


-------------------------------------------
-- UI Elements & Popups
-------------------------------------------
hl(0, "VertSplit", {fg = color.base03, bg = color.base00}) -- Changed from base02 to base03
hl(0, "WinSeparator", {fg = color.base03, bg = color.base00}) -- Changed from base02 to base03
hl(0, "StatusLine", {fg = color.base05, bg = color.base02})
hl(0, "StatusLineNC", {fg = color.base04, bg = color.base01})

hl(0, "NormalFloat", {fg = color.base05, bg = color.base01})
hl(0, "FloatBorder", {fg = color.base03, bg = color.base01}) -- Changed from base02 to base03
hl(0, "WhichKeyBorder", {fg = color.base03, bg = color.base01}) -- Changed from base02 to base03

hl(0, "Pmenu", {fg = color.base05, bg = color.base01})
hl(0, "PmenuSel", {bg = color.base03})
hl(0, "PmenuThumb", { fg = color.base05, bg = color.base04})

hl(0, "WildMenu", {bg = color.base01, fg = color.base0B})

-------------------------------------------
-- Search & Comments
-------------------------------------------
hl(0, "Search", {fg = color.base00, bg = color.base0A})
hl(0, "IncSearch", {fg = color.base00, bg = color.base08, bold = true})
hl(0, "Comment", { fg=color.base04})
hl(0, "Folded", {fg = color.base04, bg = color.base01})

-------------------------------------------
-- Completion (CMP)
-------------------------------------------
hl(0, "CmpItemAbbr", {fg = color.base05})
hl(0, "CmpItemAbbrMatch", {fg = color.base0B, bold = true})
hl(0, "CmpItemKind", {fg = color.base0C})
hl(0, "CmpItemMenu", {fg = color.base04})

-------------------------------------------
-- Diff
-------------------------------------------
hl(0, "DiffAdd", {bg = "#1a291f"})
hl(0, "DiffChange", {bg = "#202843"})
hl(0, "DiffDelete", {bg = "#2e171a"})
hl(0, "DiffText", {bg = "#202843", underline= true})
hl(0, "DiffViewDiffText", {bg = "#202843", underline= false})

-------------------------------------------
-- Syntax Highlighting (Vim/Treesitter)
-------------------------------------------
hl(0, "TSText", { fg=color.base07})
hl(0, "TSIdentifier", { fg=color.base07})
hl(0, "Identifier", { fg=color.base07})
hl(0, "TSProperty", { fg=color.base05})
hl(0, "TSField", { fg=color.base05})
hl(0, "TSVariable", { fg=color.base0D})
hl(0, "Variable", { fg=color.base0D})

hl(0, "TSKeyword", { fg=color.base0C})
hl(0, "TSOperator", { fg=color.base05})
hl(0, "Operator", { fg=color.base05})
hl(0, "Statement", { fg=color.base0C})

hl(0, "TSType", { fg=color.base06})
hl(0, "Type", { fg=color.base06})
hl(0, "TSStructure", { fg=color.base06})
hl(0, "Structure", { fg=color.base06})
hl(0, "TSInclude", { fg=color.base0B})
hl(0, "Include", { fg=color.base0B})
hl(0, "TSDefine", { fg=color.base0A})
hl(0, "Define", { fg=color.base0A})

hl(0, "TSFunction", { fg=color.base0B})
hl(0, "Function", { fg=color.base0B})

hl(0, "TSString", { fg=color.base09})
hl(0, "String", { fg=color.base09})
hl(0, "TSNumber", { fg=color.base08})
hl(0, "Number", { fg=color.base08})
hl(0, "TSBoolean", { fg=color.base08})
hl(0, "Boolean", { fg=color.base08})
hl(0, "TSConstant", { fg=color.base08})
hl(0, "Constant", { fg=color.base08})
hl(0, "TSCharacter", { fg=color.base06})
hl(0, "Character", { fg=color.base06})

hl(0, "TSMacro", { fg=color.base0A})
hl(0, "Macro", { fg=color.base0A})
hl(0, "SpecialChar", { fg=color.base07})
