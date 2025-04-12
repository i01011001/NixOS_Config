local colors = {
	red = "#bf656e",
	green = "#83ad84",
	yellow = "#dbc68c",
	blue = "#6286ad",
	magenta = "#8782af",
	cyan = "#7dafac",
	gray00 = "#141414",
	gray01 = "#3D3D3D",
	gray02 = "#ABABAB",
	gray03 = "#d0d0d0",
	bg = "#000000",
	fg = "#F9F9F9",
} 

vim.g.terminal_color_0 = colors.gray00
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.gray02
vim.g.terminal_color_8 = colors.gray01
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.magenta
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.gray03
vim.g.terminal_color_background = colors.bg
vim.g.terminal_color_foreground = colors.fg

local function opt(key, default)
  key = "rasmus_" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end

  return vim.g[key]
end

local function style(italic, bold)
  return { bold = bold, italic = italic }
end

local cfg = {
  transparent = opt("transparent", true),
  comment_style = style(opt("italic_comments", true), opt("bold_comments", false)),
  keyword_style = style(opt("italic_keywords", false), opt("bold_keywords", false)),
  boolean_style = style(opt("italic_booleans", false), opt("bold_booleans", false)),
  function_style = style(opt("italic_functions", false), opt("bold_functions", false)),
  variable_style = style(opt("italic_variables", false), opt("bold_variables", false)),
  variant = opt("variant", "dark"),
}

local groups = {
	-- Base
	-- Editor highlight groups
	Normal = { fg = colors.fg, bg = cfg.transparent and colors.none or colors.bg }, -- normal text and background color
	NormalNC = { fg = colors.fg, bg = cfg.transparent and colors.none or colors.bg }, -- normal text in non-current windows
	SignColumn = { fg = colors.fg, bg = cfg.transparent and colors.none or colors.bg }, -- column where signs are displayed
	EndOfBuffer = { fg = colors.gray03 }, -- ~ lines at the end of a buffer
	NormalFloat = { fg = colors.fg, bg = colors.gray02 }, -- normal text and background color for floating windows
	FloatBorder = { fg = colors.blue, bg = colors.gray02 },
	ColorColumn = { fg = colors.none, bg = colors.gray01 }, --  used for the columns set with 'colorcolumn'
	Conceal = { fg = colors.gray05 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor = { fg = colors.cyan, bg = colors.none, reverse = true }, -- the character under the cursor
	CursorIM = { fg = colors.cyan, bg = colors.none, reverse = true }, -- like Cursor, but used when in IME mode
	Directory = { fg = colors.blue, bg = colors.none, bold = true }, -- directory names (and other special names in listings)
	DiffAdd = { fg = colors.bright_green, bg = colors.none, reverse = true }, -- diff mode: Added line
	DiffChange = { fg = colors.bright_blue, bg = colors.none, reverse = true }, --  diff mode: Changed line
	DiffDelete = { fg = colors.bright_red, bg = colors.none, reverse = true }, -- diff mode: Deleted line
	DiffText = { fg = colors.fg, bg = colors.none, reverse = true }, -- diff mode: Changed text within a changed line
	ErrorMsg = { fg = colors.red }, -- error messages
	Folded = { fg = colors.gray05, bg = colors.none, italic = true },
	FoldColumn = { fg = colors.blue },
	IncSearch = { reverse = true },
	LineNr = { fg = colors.gray05 },
	CursorLineNr = { fg = colors.gray07 },
	MatchParen = { fg = colors.yellow, bold = true },
	ModeMsg = { fg = colors.cyan, bold = true },
	MoreMsg = { fg = colors.cyan, bold = true },
	NonText = { fg = colors.gray03 },
	Pmenu = { fg = colors.gray07, bg = colors.gray02 },
	PmenuSel = { fg = colors.bg, bg = colors.gray06 },
	PmenuSbar = { fg = colors.fg, bg = colors.gray02 },
	PmenuThumb = { fg = colors.fg, bg = colors.gray05 },
	Question = { fg = colors.green, bold = true },
	QuickFixLine = { fg = colors.blue, bg = colors.gray01, bold = true, italic = true },
	qfLineNr = { fg = colors.blue, bg = colors.gray01 },
	Search = { reverse = true },
	SpecialKey = { fg = colors.gray03 },
	SpellBad = { fg = colors.red, bg = colors.none, italic = true, undercurl = true },
	SpellCap = { fg = colors.blue, bg = colors.none, italic = true, undercurl = true },
	SpellLocal = { fg = colors.cyan, bg = colors.none, italic = true, undercurl = true },
	SpellRare = { fg = colors.cyan, bg = colors.none, italic = true, undercurl = true },
	StatusLine = { fg = colors.gray07, bg = colors.gray01 },
	StatusLineNC = { fg = colors.gray06, bg = colors.gray01 },
	StatusLineTerm = { fg = colors.gray07, bg = colors.gray01 },
	StatusLineTermNC = { fg = colors.gray07, bg = colors.gray01 },
	TabLineFill = { fg = colors.gray05, bg = colors.gray01 },
	TablineSel = { fg = colors.bg, bg = colors.gray07 },
	Tabline = { fg = colors.gray05 },
	Title = { fg = colors.cyan, bg = colors.none, bold = true },
	Visual = { fg = colors.none, bg = colors.gray03 },
	VisualNOS = { fg = colors.none, bg = colors.gray03 },
	WarningMsg = { fg = colors.yellow, bold = true },
	WildMenu = { fg = colors.bg, bg = colors.blue, bold = true },
	CursorColumn = { fg = colors.none, bg = colors.gray02 },
	CursorLine = { fg = colors.none, bg = colors.gray01 },
	ToolbarLine = { fg = colors.fg, bg = colors.gray01 },
	ToolbarButton = { fg = colors.fg, bg = colors.none, bold = true },
	NormalMode = { fg = colors.cyan, bg = colors.none, reverse = true },
	InsertMode = { fg = colors.green, bg = colors.none, reverse = true },
	VisualMode = { fg = colors.cyan, bg = colors.none, reverse = true },
	VertSplit = { fg = colors.gray02 },
	CommandMode = { fg = colors.gray05, bg = colors.none, reverse = true },
	Warnings = { fg = colors.yellow },
	healthError = { fg = colors.red },
	healthSuccess = { fg = colors.green },
	healthWarning = { fg = colors.yellow },
	--common
	Type = { fg = colors.cyan }, -- int, long, char, etcolors.
	StorageClass = { fg = colors.cyan }, -- static, register, volatile, etcolors.
	Structure = { fg = colors.fg }, -- struct, union, enum, etcolors.
	Constant = { fg = colors.cyan }, -- any constant
	Comment = { fg = colors.gray05, bg = colors.none, bold = cfg.comment_style.bold, italic = cfg.comment_style.italic }, -- italic comments
	Conditional = { fg = colors.blue, bg = colors.none, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- italic if, then, else, endif, switch, etcolors.
	Keyword = { fg = colors.blue, bg = colors.none, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- italic for, do, while, etcolors.
	Repeat = { fg = colors.blue, bg = colors.none, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- italic any other keyword
	Boolean = { fg = colors.cyan, bg = colors.none, bold = cfg.boolean_style.bold, italic = cfg.boolean_style.italic }, -- true , false
	Function = { fg = colors.blue, bg = colors.none, bold = cfg.function_style.bold, italic = cfg.function_style.italic },
	Identifier = { fg = colors.blue, bg = colors.none }, -- any variable name
	String = { fg = colors.cyan, bg = colors.none }, -- Any string
	Character = { fg = colors.cyan }, -- any character constant: 'c', '\n'
	Number = { fg = colors.cyan }, -- a number constant: 5
	Float = { fg = colors.cyan }, -- a floating point constant: 2.3e10
	Statement = { fg = colors.blue }, -- any statement
	Label = { fg = colors.cyan }, -- case, default, etcolors.
	Operator = { fg = colors.yellow }, -- sizeof", "+", "*", etcolors.
	Exception = { fg = colors.yellow }, -- try, catch, throw
	PreProc = { fg = colors.red }, -- generic Preprocessor
	Include = { fg = colors.blue }, -- preprocessor #include
	Define = { fg = colors.cyan }, -- preprocessor #define
	Macro = { fg = colors.blue }, -- same as Define
	Typedef = { fg = colors.cyan }, -- A typedef
	PreCondit = { fg = colors.cyan }, -- preprocessor #if, #else, #endif, etcolors.
	Special = { fg = colors.blue, bg = colors.none, italic = true }, -- any special symbol
	SpecialChar = { fg = colors.cyan }, -- special character in a constant
	Tag = { fg = colors.yellow }, -- you can use CTRL-] on this
	Delimiter = { fg = colors.gray07 }, -- character that needs attention like , or .
	SpecialComment = { fg = colors.blue }, -- special things inside a comment
	Debug = { fg = colors.red }, -- debugging statements
	Underlined = { fg = colors.cyan, bg = colors.none, underline = true }, -- text that stands out, HTML links
	Ignore = { fg = colors.gray07 }, -- left blank, hidden
	Error = { fg = colors.red, bg = colors.none, bold = true, underline = true }, -- any erroneous construct
	Todo = { fg = colors.cyan, bg = colors.none, bold = true, italic = true }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	-- TreeSitter highlight groups
	TSAnnotation = { fg = colors.green }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	TSAttribute = { fg = colors.fg }, -- (unstable) TODO: docs
	TSBoolean = { fg = colors.cyan, bg = colors.none, bold = cfg.boolean_style.bold, italic = cfg.boolean_style.italic }, -- true or false
	TSCharacter = { fg = colors.cyan }, -- For characters.
	TSComment = { fg = colors.gray05, bg = colors.none, bold = cfg.comment_style.bold, italic = cfg.comment_style.italic }, -- For comment blocks.
	TSConditional = { fg = colors.blue, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- For keywords related to conditionnals.
	TSConstant = { fg = colors.fg }, -- For constants
	TSConstBuiltin = { fg = colors.cyan, italic = true }, -- For constants that are built in the language: `nil` in Lua.
	TSConstMacro = { fg = colors.cyan }, -- For constants that are defined by macros: `NULL` in colors.
	TSConstructor = { fg = colors.gray07 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
	TSError = { fg = colors.red }, -- For syntax/parser errors.
	TSException = { fg = colors.yellow }, -- For exception related keywords.
	TSField = { fg = colors.cyan }, -- For fields.
	TSFloat = { fg = colors.cyan }, -- For floats.
	TSFunction = { fg = colors.fg, bold = cfg.function_style.bold, italic = cfg.function_style.italic }, -- For fuction (calls and definitions).
	TSFuncBuiltin = { fg = colors.fg, bold = cfg.function_style.bold, italic = cfg.function_style.italic }, -- For builtin functions: `table.insert` in Lua.
	TSFuncMacro = { fg = colors.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
	TSInclude = { fg = colors.blue, italic = true }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
	TSKeyword = { fg = colors.blue, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- For keywords that don't fall in previous categories.
	TSKeywordFunction = { fg = colors.blue, bold = cfg.function_style.bold, italic = cfg.function_style.italic }, -- For keywords used to define a fuction.
	TSKeywordOperator = { fg = colors.yellow }, -- For operators that are English words, e.g. `and`, `as`, `or`.
	TSKeywordReturn = { fg = colors.blue, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- For the `return` and `yield` keywords.
	TSLabel = { fg = colors.cyan }, -- For labels: `label:` in C and `:label:` in Lua.
	TSMethod = { fg = colors.bright_blue, bold = cfg.function_style.bold, italic = cfg.function_style.italic }, -- For method calls and definitions.
	TSNamespace = { fg = colors.blue }, -- For identifiers referring to modules and namespaces.
	-- TSNone = {}, -- No highlighting. Don't change the values of this highlight group.
	TSNumber = { fg = colors.cyan }, -- For all numbers
	TSOperator = { fg = colors.yellow }, -- For any operator: `+`, but also `->` and `*` in colors.
	TSParameter = { fg = colors.fg }, -- For parameters of a function.
	TSParameterReference = { fg = colors.fg }, -- For references to parameters of a function.
	TSProperty = { fg = colors.blue }, -- Same as `TSField`.
	TSPunctDelimiter = { fg = colors.gray05 }, -- For delimiters ie: `.`
	TSPunctBracket = { fg = colors.gray05 }, -- For brackets and parens.
	TSPunctSpecial = { fg = colors.green }, -- For special punctutation that does not fall in the catagories before.
	TSRepeat = { fg = colors.blue, bold = cfg.keyword_style.bold, italic = cfg.keyword_style.italic }, -- For keywords related to loops.
	TSString = { fg = colors.cyan }, -- For strings.
	TSStringRegex = { fg = colors.green }, -- For regexes.
	TSStringEscape = { fg = colors.cyan }, -- For escape characters within a string.
	TSStringSpecial = { fg = colors.green }, -- For strings with special meaning that don't fit into the above categories.
	TSSymbol = { fg = colors.green }, -- For identifiers referring to symbols or atoms.
	TSTag = { fg = colors.yellow }, -- Tags like html tag names.
	TSTagAttribute = { fg = colors.fg, italic = true }, -- For html tag attributes.
	TSTagDelimiter = { fg = colors.gray05 }, -- Tag delimiter like `<` `>` `/`
	TSText = { fg = colors.fg }, -- For strings considered text in a markup language.
	TSStrong = { fg = colors.bright_white, bold = true }, -- For text to be represented in bold.
	TSEmphasis = { fg = colors.bright_white, bold = true, italic = true }, -- For text to be represented with emphasis.
	TSUnderline = { fg = colors.bright_white, bg = colors.none, underline = true }, -- For text to be represented with an underline.
	TSStrike = {}, -- For strikethrough text.
	TSTitle = { fg = colors.fg, bg = colors.none, bold = true }, -- Text that is part of a title.
	TSLiteral = { fg = colors.fg }, -- Literal text.
	TSURI = { fg = colors.cyan }, -- Any URL like a link or email.
	TSMath = { fg = colors.blue }, -- For LaTeX-like math environments.
	TSTextReference = { fg = colors.yellow }, -- For footnotes, text references, citations.
	TSEnvironment = { fg = colors.blue }, -- For text environments of markup languages.
	TSEnvironmentName = { fg = colors.bright_blue }, -- For the name/the string indicating the type of text environment.
	TSNote = { fg = colors.blue, italic = true }, -- Text representation of an informational note.
	TSWarning = { fg = colors.yellow, italic = true }, -- Text representation of a warning note.
	TSDanger = { fg = colors.red, italic = true }, -- Text representation of a danger note.
	TSType = { fg = colors.fg }, -- For types.
	TSTypeBuiltin = { fg = colors.blue }, -- For builtin types.
	TSVariable = { fg = colors.fg, bold = cfg.variable_style.bold, italic = cfg.variable_style.italic }, -- Any variable name that does not have another highlight.
	TSVariableBuiltin = { fg = colors.yellow, bold = cfg.variable_style.bold, italic = cfg.variable_style.italic }, -- Variable names that are defined by the languages, like `this` or `self`.
	-- highlight groups for the native LSP client
	LspReferenceText = { fg = colors.bg, bg = colors.magenta }, -- used for highlighting "text" references
	LspReferenceRead = { fg = colors.bg, bg = colors.magenta }, -- used for highlighting "read" references
	LspReferenceWrite = { fg = colors.bg, bg = colors.magenta }, -- used for highlighting "write" references
	-- Diagnostics
	DiagnosticError = { fg = colors.red }, -- base highlight group for "Error"
	DiagnosticWarn = { fg = colors.yellow }, -- base highlight group for "Warning"
	DiagnosticInfo = { fg = colors.blue }, -- base highlight group from "Information"
	DiagnosticHint = { fg = colors.cyan }, -- base highlight group for "Hint"
	DiagnosticUnderlineError = { fg = colors.red, undercurl = true, sp = colors.red }, -- used to underline "Error" diagnostics.
	DiagnosticUnderlineWarn = { fg = colors.yellow, undercurl = true, sp = colors.yellow }, -- used to underline "Warning" diagnostics.
	DiagnosticUnderlineInfo = { fg = colors.blue, undercurl = true, sp = colors.blue }, -- used to underline "Information" diagnostics.
	DiagnosticUnderlineHint = { fg = colors.cyan, undercurl = true, sp = colors.cyan }, -- used to underline "Hint" diagnostics.
	-- Diagnostics (old)
	LspDiagnosticsDefaultError = { fg = colors.red }, -- used for "Error" diagnostic virtual text
	LspDiagnosticsSignError = { fg = colors.red }, -- used for "Error" diagnostic signs in sign column
	LspDiagnosticsFloatingError = { fg = colors.red, bold = true }, -- used for "Error" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextError = { fg = colors.red, bold = true }, -- Virtual text "Error"
	LspDiagnosticsUnderlineError = { fg = colors.red, undercurl = true, sp = colors.red }, -- used to underline "Error" diagnostics.
	LspDiagnosticsDefaultWarning = { fg = colors.yellow }, -- used for "Warning" diagnostic signs in sign column
	LspDiagnosticsSignWarning = { fg = colors.yellow }, -- used for "Warning" diagnostic signs in sign column
	LspDiagnosticsFloatingWarning = { fg = colors.yellow, bold = true }, -- used for "Warning" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextWarning = { fg = colors.yellow, bold = true }, -- Virtual text "Warning"
	LspDiagnosticsUnderlineWarning = { fg = colors.yellow, undercurl = true, sp = colors.yellow }, -- used to underline "Warning" diagnostics.
	LspDiagnosticsDefaultInformation = { fg = colors.blue }, -- used for "Information" diagnostic virtual text
	LspDiagnosticsSignInformation = { fg = colors.blue }, -- used for "Information" diagnostic signs in sign column
	LspDiagnosticsFloatingInformation = { fg = colors.blue, bold = true }, -- used for "Information" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextInformation = { fg = colors.blue, bold = true }, -- Virtual text "Information"
	LspDiagnosticsUnderlineInformation = { fg = colors.blue, undercurl = true, sp = colors.blue }, -- used to underline "Information" diagnostics.
	LspDiagnosticsDefaultHint = { fg = colors.cyan }, -- used for "Hint" diagnostic virtual text
	LspDiagnosticsSignHint = { fg = colors.cyan }, -- used for "Hint" diagnostic signs in sign column
	LspDiagnosticsFloatingHint = { fg = colors.cyan, bold = true }, -- used for "Hint" diagnostic messages in the diagnostics float
	LspDiagnosticsVirtualTextHint = { fg = colors.cyan, bold = true }, -- Virtual text "Hint"
	LspDiagnosticsUnderlineHint = { fg = colors.cyan, undercurl = true, sp = colors.cyan }, -- used to underline "Hint" diagnostics.
	-- Plugins highlight groups
	-- Diff
	diffAdded = { fg = colors.bright_green },
	diffRemoved = { fg = colors.bright_red },
	diffChanged = { fg = colors.bright_blue },
	diffOldFile = { fg = colors.gray04 },
	diffNewFile = { fg = colors.fg },
	diffFile = { fg = colors.gray05 },
	diffLine = { fg = colors.cyan },
	diffIndexLine = { fg = colors.magenta },
	-- Telescope
	TelescopeSelectionCaret = { fg = colors.blue, bg = colors.gray01 },
	TelescopeBorder = { fg = colors.gray05 },
	TelescopePromptBorder = { fg = colors.blue },
	TelescopeResultsBorder = { fg = colors.gray07 },
	TelescopePreviewBorder = { fg = colors.gray05 },
	TelescopeMatching = { fg = colors.yellow },
	TelescopePromptPrefix = { fg = colors.blue },
	-- WhichKey
	WhichKey = { fg = colors.bright_cyan },
	WhichKeyGroup = { fg = colors.yellow, italic = true },
	WhichKeyDesc = { fg = colors.blue },
	WhichKeySeperator = { fg = colors.gray05 },
	WhichKeyFloating = { bg = colors.gray01 },
	WhichKeyFloat = { bg = colors.gray01 },
	-- nvim-cmp
	CmpItemAbbrDeprecated = { fg = colors.gray05, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.yellow },
	CmpItemAbbrMatchFuzzy = { fg = colors.yellow },
	CmpItemKindVariable = { fg = colors.blue },
	CmpItemKindInterface = { fg = colors.blue },
	CmpItemKindText = { fg = colors.blue },
	CmpItemKindFunction = { fg = colors.magenta },
	CmpItemKindMethod = { fg = colors.magenta },
	CmpItemKindKeyword = { fg = colors.fg },
	CmpItemKindProperty = { fg = colors.fg },
	CmpItemKindUnit = { fg = colors.fg },
	-- Custom highlight groups for use in statusline plugins
	StatusLineNormalMode = { fg = colors.black, bg = colors.gray02 },
	StatusLineInsertMode = { fg = colors.black, bg = colors.gray03 },
	StatusLineVisualMode = { fg = colors.black, bg = colors.gray04 },
	StatusLineReplaceMode = { fg = colors.black, bg = colors.gray05 },
	StatusLineTerminalMode = { fg = colors.black, bg = colors.gray05 },
	StatusLineHint = { fg = colors.cyan, bg = colors.gray01 },
	StatusLineInfo = { fg = colors.blue, bg = colors.gray01 },
	StatusLineWarn = { fg = colors.yellow, bg = colors.gray01 },
	StatusLineError = { fg = colors.red, bg = colors.gray01 },
	-- JSON
	jsonNumber = { fg = colors.yellow },
	jsonNull = { fg = colors.bright_black },
	jsonString = { fg = colors.green },
	jsonKeyword = { fg = colors.blue },
}

vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
	vim.api.nvim_command("syntax reset")
end

for group, color in pairs(groups) do
	vim.api.nvim_set_hl(0, group, color)
end
