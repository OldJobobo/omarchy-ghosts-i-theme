local palette = {
  bg = "#1b0f0c",
  bg_alt = "#211310",
  bg_highlight = "#251713",
  bg_visual = "#4e3024",
  bg_status = "#281814",
  bg_float = "#20120f",
  fg = "#d8c8b4",
  fg_bright = "#e6d7c3",
  fg_muted = "#d2aa73",
  comment = "#7a6a5f",
  border = "#7a6a5f",
  accent = "#c19359",
  red = "#b44949",
  red_dim = "#8f2f2f",
  green = "#61897d",
  green_dim = "#466b61",
  yellow = "#d9b67e",
  blue = "#ab7f53",
  magenta = "#8d623b",
  cyan = "#61897d",
  orange = "#c19359",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "ghosts-i"
vim.o.background = "dark"
vim.o.termguicolors = true

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function link(from, to)
  hi(from, { link = to })
end

hi("Normal", { fg = palette.fg, bg = palette.bg })
hi("NormalNC", { fg = palette.fg, bg = palette.bg })
hi("NormalFloat", { fg = palette.fg, bg = palette.bg_float })
hi("FloatBorder", { fg = palette.border, bg = palette.bg_float })
hi("FloatTitle", { fg = palette.accent, bg = palette.bg_float, bold = true })
hi("ColorColumn", { bg = palette.bg_alt })
hi("Conceal", { fg = palette.comment })
hi("CurSearch", { fg = palette.bg, bg = palette.orange, bold = true })
hi("Cursor", { fg = palette.bg, bg = palette.fg_bright })
hi("lCursor", { fg = palette.bg, bg = palette.fg_bright })
hi("CursorIM", { fg = palette.bg, bg = palette.fg_bright })
hi("CursorColumn", { bg = palette.bg_alt })
hi("CursorLine", { bg = palette.bg_alt })
hi("CursorLineNr", { fg = palette.accent, bg = palette.bg_alt, bold = true })
hi("Directory", { fg = palette.accent })
hi("EndOfBuffer", { fg = palette.bg })
hi("ErrorMsg", { fg = palette.red, bg = palette.bg })
hi("WinSeparator", { fg = palette.border })
hi("Folded", { fg = palette.comment, bg = palette.bg_alt })
hi("FoldColumn", { fg = palette.comment, bg = palette.bg })
hi("SignColumn", { fg = palette.comment, bg = palette.bg })
hi("IncSearch", { fg = palette.bg, bg = palette.yellow, bold = true })
hi("Substitute", { fg = palette.bg, bg = palette.magenta, bold = true })
hi("LineNr", { fg = palette.comment, bg = palette.bg })
hi("MatchParen", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })
hi("ModeMsg", { fg = palette.green, bold = true })
hi("MoreMsg", { fg = palette.green })
hi("NonText", { fg = palette.border })
hi("Pmenu", { fg = palette.fg, bg = palette.bg_float })
hi("PmenuSel", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })
hi("PmenuSbar", { bg = palette.bg_alt })
hi("PmenuThumb", { bg = palette.border })
hi("Question", { fg = palette.accent })
hi("QuickFixLine", { bg = palette.bg_visual, bold = true })
hi("Search", { fg = palette.bg, bg = palette.accent })
hi("SpecialKey", { fg = palette.comment })
hi("SpellBad", { sp = palette.red, undercurl = true })
hi("SpellCap", { sp = palette.accent, undercurl = true })
hi("SpellLocal", { sp = palette.cyan, undercurl = true })
hi("SpellRare", { sp = palette.magenta, undercurl = true })
hi("StatusLine", { fg = palette.fg, bg = palette.bg_status })
hi("StatusLineNC", { fg = palette.comment, bg = palette.bg_status })
hi("TabLine", { fg = palette.comment, bg = palette.bg_status })
hi("TabLineFill", { fg = palette.comment, bg = palette.bg_status })
hi("TabLineSel", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })
hi("Title", { fg = palette.accent, bold = true })
hi("Visual", { bg = palette.bg_visual })
hi("VisualNOS", { bg = palette.bg_visual })
hi("WarningMsg", { fg = palette.yellow })
hi("Whitespace", { fg = palette.border })
hi("WildMenu", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })

hi("Comment", { fg = palette.comment, italic = true })
hi("Bold", { bold = true })
hi("Constant", { fg = palette.orange })
hi("String", { fg = palette.green })
hi("Character", { fg = palette.green })
hi("Number", { fg = palette.orange })
hi("Boolean", { fg = palette.orange, bold = true })
hi("Float", { fg = palette.orange })
hi("Identifier", { fg = palette.fg })
hi("Function", { fg = palette.accent })
hi("Statement", { fg = palette.red })
hi("Conditional", { fg = palette.red })
hi("Repeat", { fg = palette.red })
hi("Label", { fg = palette.magenta })
hi("Operator", { fg = palette.comment })
hi("Keyword", { fg = palette.red })
hi("Exception", { fg = palette.red })
hi("PreProc", { fg = palette.blue })
hi("Include", { fg = palette.red })
hi("Define", { fg = palette.red })
hi("Macro", { fg = palette.blue })
hi("PreCondit", { fg = palette.blue })
hi("Type", { fg = palette.yellow })
hi("StorageClass", { fg = palette.yellow })
hi("Structure", { fg = palette.cyan })
hi("Typedef", { fg = palette.accent })
hi("Special", { fg = palette.cyan })
hi("SpecialChar", { fg = palette.blue })
hi("Tag", { fg = palette.accent })
hi("Delimiter", { fg = palette.border })
hi("SpecialComment", { fg = palette.comment, italic = true })
hi("Debug", { fg = palette.orange })
hi("Underlined", { fg = palette.cyan, underline = true })
hi("Ignore", { fg = palette.comment })
hi("Italic", { italic = true })
hi("Error", { fg = palette.red, bold = true })
hi("Strikethrough", { strikethrough = true })
hi("Todo", { fg = palette.bg, bg = palette.accent, bold = true })

hi("DiagnosticError", { fg = palette.red })
hi("DiagnosticWarn", { fg = palette.yellow })
hi("DiagnosticInfo", { fg = palette.cyan })
hi("DiagnosticHint", { fg = palette.green })
hi("DiagnosticOk", { fg = palette.green })
hi("DiagnosticSignError", { fg = palette.red, bg = palette.bg })
hi("DiagnosticSignWarn", { fg = palette.yellow, bg = palette.bg })
hi("DiagnosticSignInfo", { fg = palette.cyan, bg = palette.bg })
hi("DiagnosticSignHint", { fg = palette.green, bg = palette.bg })
hi("DiagnosticVirtualTextError", { fg = palette.red, bg = palette.bg_alt })
hi("DiagnosticVirtualTextWarn", { fg = palette.yellow, bg = palette.bg_alt })
hi("DiagnosticVirtualTextInfo", { fg = palette.cyan, bg = palette.bg_alt })
hi("DiagnosticVirtualTextHint", { fg = palette.green, bg = palette.bg_alt })
hi("DiagnosticUnderlineError", { sp = palette.red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = palette.yellow, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = palette.cyan, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = palette.green, undercurl = true })

hi("DiffAdd", { fg = palette.green, bg = palette.bg_alt })
hi("DiffChange", { fg = palette.accent, bg = palette.bg_alt })
hi("DiffDelete", { fg = palette.red, bg = palette.bg_alt })
hi("DiffText", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })
hi("Added", { fg = palette.green })
hi("Changed", { fg = palette.accent })
hi("Removed", { fg = palette.red })

hi("GitSignsAdd", { fg = palette.green, bg = palette.bg })
hi("GitSignsChange", { fg = palette.accent, bg = palette.bg })
hi("GitSignsDelete", { fg = palette.red, bg = palette.bg })
hi("GitSignsTopdelete", { fg = palette.red, bg = palette.bg })
hi("GitSignsChangedelete", { fg = palette.yellow, bg = palette.bg })
hi("MiniDiffSignAdd", { fg = palette.green, bg = palette.bg })
hi("MiniDiffSignChange", { fg = palette.accent, bg = palette.bg })
hi("MiniDiffSignDelete", { fg = palette.red, bg = palette.bg })

hi("MiniIconsGrey", { fg = palette.border })
hi("MiniIconsRed", { fg = palette.red_dim })
hi("MiniIconsBlue", { fg = palette.blue })
hi("MiniIconsGreen", { fg = palette.green })
hi("MiniIconsYellow", { fg = palette.yellow })
hi("MiniIconsOrange", { fg = palette.orange })
hi("MiniIconsPurple", { fg = palette.magenta })
hi("MiniIconsAzure", { fg = palette.fg_muted })
hi("MiniIconsCyan", { fg = palette.cyan })

hi("BlinkCmpMenu", { fg = palette.fg, bg = palette.bg_float })
hi("BlinkCmpMenuBorder", { fg = palette.border, bg = palette.bg_float })
hi("BlinkCmpMenuSelection", { fg = palette.fg_bright, bg = palette.bg_visual, bold = true })
hi("BlinkCmpScrollBarGutter", { bg = palette.bg_alt })
hi("BlinkCmpScrollBarThumb", { bg = palette.border })
hi("BlinkCmpDoc", { fg = palette.fg, bg = palette.bg_float })
hi("BlinkCmpDocBorder", { fg = palette.border, bg = palette.bg_float })
hi("BlinkCmpDocSeparator", { fg = palette.border, bg = palette.bg_float })
hi("BlinkCmpLabel", { fg = palette.fg })
hi("BlinkCmpLabelMatch", { fg = palette.accent, bold = true })
hi("BlinkCmpLabelDetail", { fg = palette.comment })
hi("BlinkCmpLabelDescription", { fg = palette.comment })
hi("BlinkCmpSource", { fg = palette.magenta })
hi("BlinkCmpKind", { fg = palette.fg_muted })

hi("CmpItemAbbr", { fg = palette.fg })
hi("CmpItemAbbrMatch", { fg = palette.accent, bold = true })
hi("CmpItemMenu", { fg = palette.comment })
hi("CmpItemKind", { fg = palette.fg_muted })

hi("NoiceCmdlinePopup", { fg = palette.fg, bg = palette.bg_float })
hi("NoiceCmdlinePopupBorder", { fg = palette.border, bg = palette.bg_float })
hi("NoiceCmdlineIcon", { fg = palette.accent })

hi("IblIndent", { fg = palette.border, nocombine = true })
hi("IblWhitespace", { fg = palette.border, nocombine = true })
hi("IblScope", { fg = palette.fg_muted, nocombine = true })
hi("IndentBlanklineChar", { fg = palette.border, nocombine = true })
hi("IndentBlanklineContextChar", { fg = palette.fg_muted, nocombine = true })

hi("LspReferenceText", { bg = palette.bg_alt })
hi("LspReferenceRead", { bg = palette.bg_alt })
hi("LspReferenceWrite", { bg = palette.bg_highlight })
hi("LspCodeLens", { fg = palette.comment })
hi("LspCodeLensSeparator", { fg = palette.border })
hi("LspInlayHint", { fg = palette.comment, bg = palette.bg_alt })

link("@annotation", "PreProc")
link("@attribute", "PreProc")
link("@boolean", "Boolean")
link("@character", "Character")
link("@character.special", "SpecialChar")
link("@comment", "Comment")
link("@conceal", "Conceal")
link("@conditional", "Conditional")
link("@constant", "Constant")
link("@constant.builtin", "Special")
link("@constant.macro", "Define")
link("@constructor", "Function")
link("@debug", "Debug")
link("@define", "Define")
link("@error", "Error")
link("@exception", "Exception")
link("@field", "Special")
link("@float", "Float")
link("@function", "Function")
link("@function.builtin", "Special")
link("@function.call", "Function")
link("@function.macro", "Macro")
link("@include", "Include")
link("@keyword", "Keyword")
link("@keyword.function", "Keyword")
link("@keyword.operator", "Operator")
link("@keyword.return", "Keyword")
link("@label", "Label")
link("@method", "Function")
link("@method.call", "Function")
link("@module", "Structure")
link("@namespace", "Structure")
link("@none", "Normal")
link("@number", "Number")
link("@operator", "Operator")
link("@parameter", "Label")
link("@parameter.reference", "Label")
link("@property", "Special")
link("@punctuation.bracket", "Delimiter")
link("@punctuation.delimiter", "Delimiter")
link("@punctuation.special", "Special")
link("@repeat", "Repeat")
link("@storageclass", "StorageClass")
link("@string", "String")
link("@string.escape", "SpecialChar")
link("@string.regex", "SpecialChar")
link("@string.special", "Special")
link("@symbol", "SpecialChar")
link("@tag", "Tag")
link("@tag.attribute", "Special")
link("@tag.delimiter", "Delimiter")
link("@text", "Normal")
link("@text.danger", "DiagnosticError")
link("@text.diff.add", "DiffAdd")
link("@text.diff.delete", "DiffDelete")
link("@text.emphasis", "Italic")
link("@text.environment", "Macro")
link("@text.environment.name", "Type")
link("@text.literal", "String")
link("@text.math", "Special")
link("@text.note", "DiagnosticInfo")
link("@text.reference", "Underlined")
link("@text.strike", "Strikethrough")
link("@text.strong", "Bold")
link("@text.title", "Title")
link("@text.todo", "Todo")
link("@text.underline", "Underlined")
link("@text.uri", "Underlined")
link("@text.warning", "DiagnosticWarn")
link("@type", "Type")
link("@type.builtin", "Type")
link("@type.definition", "Typedef")
link("@type.qualifier", "StorageClass")
link("@variable", "Identifier")
link("@variable.builtin", "SpecialChar")

local cmp_kind_colors = {
  Text = palette.fg,
  Method = palette.accent,
  Function = palette.accent,
  Constructor = palette.accent,
  Field = palette.cyan,
  Variable = palette.fg,
  Class = palette.yellow,
  Interface = palette.yellow,
  Module = palette.magenta,
  Property = palette.cyan,
  Unit = palette.comment,
  Value = palette.orange,
  Enum = palette.yellow,
  Keyword = palette.red,
  Snippet = palette.green,
  Color = palette.magenta,
  File = palette.blue,
  Reference = palette.cyan,
  Folder = palette.blue,
  EnumMember = palette.orange,
  Constant = palette.orange,
  Struct = palette.yellow,
  Event = palette.magenta,
  Operator = palette.comment,
  TypeParameter = palette.magenta,
}

for kind, color in pairs(cmp_kind_colors) do
  hi("BlinkCmpKind" .. kind, { fg = color })
  hi("CmpItemKind" .. kind, { fg = color })
end
