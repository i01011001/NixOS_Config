local colors = {
 fg               = "#DFE0EA",
  bg               = "#000000",
  none             = "#000000",
  --16181D
  dark             = '#000000',
  comment          = "#4d4d4d",
  popup_back       = '#565656',
  cursor_fg        = '#DFDFDF',
  context          = '#575757',
  cursor_bg        = '#AEAFAD',
  accent           = '#BBBBBB',
  diff_add         = '#8CD881',
  diff_change      = '#6CAEC0',
  cl_bg            = "#787878",
  diff_text        = '#568BB4',
  line_fg          = "#242424",
  line_bg          = "#000000",
  gutter_bg        = "#000000",
  non_text         = "#696969",
  selection_bg     = "#65676C",
  selection_fg     = "#535353",
  vsplit_fg        = "#242424",
  vsplit_bg        = "#000000",
  visual_select_bg = "#000000",

  red_key_w  = "#BF656e",
  red_err    = "#BF656E",
  green_func = '#83AD84',
  green      = "#83AD84",
  blue_type  = '#6286AD',
  black1     = "#1a1a1a",
  black      = "#121212",
  white1     = "#D0D0D0",
  white      = "#E1E1E1",
  gray_punc  = "#585858",
  gray2      = "#737373",
  gray1      = '#3D3D3D',
  gray       = "#272727",
  orange     = "#cd9b72",
  orange_wr  = "#cd9b72",
  pink       = "#8782AF",
  yellow     = "#ebd497",
}


local config = {
  transparent_background = true,
  italic_comments = 'NONE', -- or 'italic'
  italic_keywords = 'NONE', 
  italic_functions = 'NONE',
  italic_booleans = 'NONE',
  italic_variables = 'NONE',
}

local M = {}

M.base = {
    ---------------------------------------
    --        Styles
    ---------------------------------------
    Bold = { style = 'bold' },
    Italic = { style = 'italic' },
    Underlined = { style = 'underline' },
    ---------------------------------------


    -----------------------------------------
    --        Editors settings
    -----------------------------------------
    Boolean = { fg = colors.orange, style = config.italic_booleans },

    Character    = { fg = colors.yellow },
    ColorColumn  = { bg = colors.black1 },
    Comment      = { fg = colors.comment, style = config.italic_comments },
    Conceal      = { fg = colors.fg }, -- {bg = config.transparent_background and 'NONE' or colors.bg },
    Conditional  = { fg = colors.red_key_w },
    Constant     = { fg = colors.pink },
    Cursor       = { fg = colors.yellow, bg = colors.bg },
    CursorColumn = { fg = "NONE", bg = "NONE" },
    -- CursorIM = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    CursorLine   = { bg = colors.black1 },
    CursorLineNr = { fg = colors.white, bg = colors.gutter_bg, style = 'bold' },

    Debug       = { fg = colors.fg },
    Define      = { fg = colors.blue_type },
    Delimiter   = { fg = colors.gray_punc },
    DiffAdd     = { fg = colors.green_func },
    DiffAdded   = { fg = colors.green_func },
    DiffChange  = { fg = colors.green_func },
    DiffDelete  = { fg = colors.red_key_w },
    DiffRemoved = { fg = colors.red_key_w },
    DiffText    = { fg = colors.white1 },
    DiffFile    = { fg = colors.pink },
    -- DiffIndexLine     = { fg = colors.gray3 },


    -- EndOfBuffer = { fg = colors.bg },
    Error     = { fg = colors.red_key_w, bg = colors.bg, style = 'bold' },
    ErrorMsg  = { fg = colors.gray, bg = colors.red_err, style = 'bold' },
    Exception = { fg = colors.white },

    Float       = { fg = colors.orange },
    FloatBorder = { fg = colors.gray2, bg = "NONE" },
    FoldColumn  = { fg = colors.line_fg },
    Folded      = { fg = colors.white, bg = colors.gray },
    Function    = { fg = colors.green_func },

    Identifier = { fg = colors.white1 },
    Ignore     = { fg = colors.gray_punc },
    IncSearch  = { fg = colors.bg, bg = colors.orange },
    Include    = { fg = colors.blue_type,  style = config.italic_keywords },

    Keyword = { fg = colors.red_key_w,  style = config.italic_keywords },

    Label  = { fg = colors.red_key_w },
    LineNr = { fg = colors.line_fg, bg = colors.line_bg },

    Macro         = { fg = colors.red_key_w,  style = config.italic_keywords },
    MatchParen    = { fg = colors.white1, bg = colors.black },
    MatchParenCur = { style = 'underline' },
    MatchWord     = { style = 'underline' },
    MatchWordCur  = { style = 'underline' },
    ModeMsg       = { fg = colors.fg, bg = colors.bg },
    MoreMsg       = { fg = colors.orange_wr },
    MsgArea       = { fg = colors.fg, bg = config.transparent_background and 'NONE' or colors.bg },
    MsgSeparator  = { fg = colors.fg, bg = colors.bg },

    NonText     = { fg = colors.gray2 },
    Normal      = { fg = colors.fg, bg = config.transparent_background and 'NONE' or colors.bg },
    NormalFloat = { bg = colors.dark },
    NormalNC    = { fg = colors.white, bg = config.transparent_background and 'NONE' or colors.bg },
    Number      = { fg = colors.orange },

    Operator   = { fg = colors.white },
    Pmenu      = { fg = colors.white1, bg = colors.black },
    PmenuSbar  = { bg = colors.gray },
    PmenuSel   = { fg = colors.line_fg, bg = colors.black },
    PmenuThumb = { bg = colors.bg },
    PreCondit  = { fg = colors.blue_type },
    PreProc    = { fg = colors.blue_type },

    Question     = { fg = colors.green_func },
    QuickFixLine = { fg = colors.orange_wr },

    Repeat = { fg = colors.red_key_w },

    Search              = { fg = colors.line_fg, bg = colors.orange },
    SignColumn          = { bg = colors.line_bg },
    Special             = { fg = colors.gray_punc },
    SpecialChar         = { fg = colors.yellow },
    SpecialComment      = { fg = colors.pink },
    SpecialKey          = { fg = colors.gray_punc, style = 'bold' },
    SpellBad            = { fg = colors.red_key_w, style = 'underline' },
    SpellCap            = { fg = colors.orange, style = 'underline' },
    SpellLocal          = { fg = colors.green, style = 'underline' },
    SpellRare           = { fg = colors.pink, style = 'underline' },
    Statement           = { fg = colors.red_key_w },
    StatusLine          = { fg = colors.line_fg, bg = colors.black },
    StatusLineNC        = { fg = colors.line_fg, bg = colors.black },
    StatusLineSeparator = { fg = colors.dark },
    StatusLineTerm      = { fg = colors.green_func, bg = colors.black },
    StatusLineTermNC    = { fg = colors.gray_punc, bg = colors.black },
    StorageClass        = { fg = colors.red_key_w },
    String              = { fg = colors.yellow },
    Structure           = { fg = colors.green_func },
    Substitute          = { fg = colors.gray2, bg = colors.orange },

    TabLine      = { fg = colors.line_fg },
    TabLineFill  = { fg = colors.line_fg },
    TabLineSel   = { fg = colors.fg },
    Tag          = { fg = colors.gray_punc },
    TermCursor   = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    TermCursorNC = { fg = colors.cursor_fg, bg = colors.cursor_bg },
    Title        = { fg = colors.gray_punc },
    Todo         = { fg = colors.yellow, style = 'bold' },
    Type         = { fg = colors.blue_type, style = config.italic_keywords },
    Typedef      = { fg = colors.blue_type, style = config.italic_keywords },

    Variable  = { fg = colors.white },
    VertSplit = { fg = colors.vsplit_bg },
    Visual    = { fg = "NONE", bg = colors.visual_select_bg, style = 'bold' },
    VisualNOS = { fg = colors.selection_fg, bg = colors.selection_bg },

    WarningMsg = { fg = colors.orange_wr, bg = colors.none },
    Whitespace = { fg = colors.non_text },
    WildMenu   = { fg = colors.fg },
    lCursor    = { fg = colors.cursor_fg, bg = colors.cursor_bg },

    -- Markdown
    markdownBold              = { fg = colors.white, style = 'bold' },
    markdownCode              = { fg = colors.orange },
    markdownCodeBlock         = { fg = colors.orange },
    markdownUrl               = { fg = colors.pink, style = 'underline' },
    markdownCodeError         = { fg = colors.red_err },
    markdownH1                = { fg = colors.white },
    markdownH2                = { fg = colors.white },
    markdownH3                = { fg = colors.white },
    markdownH4                = { fg = colors.white },
    markdownH5                = { fg = colors.white },
    markdownH6                = { fg = colors.white },
    markdownId                = { fg = colors.pink },
    markdownItalic            = { gf = colors.white, style = 'italic' },
    markdownLinkText          = { fg = colors.white },
    markdownRule              = { fg = colors.accent },
    markdownListMarker        = { fg = colors.red_key_w },
    markdownHeadingDelimiter  = { fg = colors.white },
    markdownHeadingRule       = { fg = colors.accent },
    markdownUrlTitleDelimiter = { fg = colors.white },
    markdownCodeSpecial       = { fg = colors.orange },
    markdownCodeDelimiter     = { fg = colors.green },
    markdownBlockquote        = { fg = colors.accent },
    markdownIdDeclaration     = { fg = colors.white },
    markdownIdDelimiter       = { fg = colors.gray2 },
    markdownLinkDelimiter     = { fg = colors.gray2 },
    markdownOrderedListMarker = { fg = colors.red_key_w },

    -----------------------------------------
    --        end Editors settings
    -----------------------------------------
}




M.plugins = {
	TelescopeBorder = {bg = colors.bg, fg = colors.gray},
	TelescopeSelection= {bg = colors.black },
	TelescopeTitle = {bg = colors.bg, fg = colors.gray1},

}


local function highlight(group, properties)
  local bg = properties.bg == nil and '' or 'guibg=' .. properties.bg
  local fg = properties.fg == nil and '' or 'guifg=' .. properties.fg
  local style = properties.style == nil and '' or 'gui=' .. properties.style
  local cmd = table.concat({ 'highlight', group, bg, fg, style }, ' ')
  vim.api.nvim_command(cmd)
end

for _, value in pairs(M) do
	for key, values in pairs(value) do
		-- hl(0, key, value)
		highlight(key, values)
	end
end
