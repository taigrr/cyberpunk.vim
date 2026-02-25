local M = {}

---@param p CyberpunkPalette
---@param opts table
---@return table<string, vim.api.keyset.highlight>
function M.groups(p, opts)
  -- Allow user overrides
  local overrides = opts.overrides or {}

  ---@type table<string, vim.api.keyset.highlight>
  local hl = {
    -- Core syntax
    Normal = { fg = p.green, bg = p.black },
    Comment = { fg = p.cyan, bold = true },
    Constant = { fg = p.blue, underline = true },
    Special = { fg = p.special, bold = true },
    Identifier = { fg = p.blue, bold = true, underline = true },
    Statement = { fg = p.yellow, bold = true },
    PreProc = { fg = p.cyan, underline = true },
    Type = { fg = p.yellow, bold = true, underline = true },
    Function = { fg = p.green, bold = true },
    Repeat = { fg = p.yellow, underline = true },
    Operator = { fg = p.red },
    Ignore = { fg = p.black },
    Error = { fg = p.red, bg = p.dark_purple, reverse = true },
    Todo = { fg = p.blue, bg = p.yellow, standout = true },

    -- Popup menu
    Pmenu = { fg = p.black, bg = p.green },
    PmenuSel = { fg = p.blue, bg = p.yellow },

    -- UI elements
    LineNr = { fg = p.dark_fg },
    CursorLineNr = { fg = p.yellow, bold = true },
    CursorLine = { bg = p.dark_bg },
    CursorColumn = { bg = p.dark_bg },
    ColorColumn = { bg = p.dark_bg },
    Visual = { bg = p.visual, reverse = true },
    VisualNOS = { bg = p.visual, reverse = true },
    Search = { fg = p.black, bg = p.yellow, reverse = true },
    IncSearch = { fg = p.black, bg = p.cyan, reverse = true },
    MatchParen = { fg = p.yellow, bg = p.visual },
    StatusLine = { fg = p.green, bg = p.dark_bg, bold = true },
    StatusLineNC = { fg = p.dark_fg, bg = p.dark_bg },
    VertSplit = { fg = p.dark_fg },
    Folded = { fg = p.cyan, bg = p.dark_bg },
    FoldColumn = { fg = p.cyan, bg = p.dark_bg },
    SignColumn = { bg = p.none },
    NonText = { fg = p.dark_fg },
    SpecialKey = { fg = p.dark_fg },
    Title = { fg = p.yellow, bold = true },
    Directory = { fg = p.cyan, bold = true },
    WildMenu = { fg = p.black, bg = p.yellow, standout = true },
    TabLine = { fg = p.dark_fg, bg = p.dark_bg },
    TabLineSel = { fg = p.green, bg = p.black, bold = true },
    TabLineFill = { bg = p.dark_bg },

    -- Diff
    DiffAdd = { bg = p.diff_green, bold = true },
    DiffChange = { bg = p.diff_blue, bold = true },
    DiffDelete = { fg = p.red, bg = p.diff_red, bold = true },
    DiffText = { bg = p.dark_purple, bold = true, reverse = true },

    -- Diagnostics (Neovim LSP)
    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.blue },
    DiagnosticHint = { fg = p.cyan },
    DiagnosticUnderlineError = { undercurl = true, sp = p.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.cyan },

    -- Spell
    SpellBad = { undercurl = true, sp = p.red },
    SpellCap = { undercurl = true, sp = p.blue },
    SpellRare = { undercurl = true, sp = p.special },
    SpellLocal = { undercurl = true, sp = p.cyan },

    -- Treesitter highlights
    ["@comment"] = { link = "Comment" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.blue, bold = true },
    ["@constant.macro"] = { link = "Define" },
    ["@string"] = { link = "Constant" },
    ["@string.escape"] = { fg = p.special },
    ["@string.regex"] = { fg = p.special },
    ["@character"] = { link = "Constant" },
    ["@number"] = { link = "Constant" },
    ["@boolean"] = { link = "Constant" },
    ["@float"] = { link = "Constant" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.green, bold = true },
    ["@function.macro"] = { link = "Macro" },
    ["@function.call"] = { fg = p.green },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { fg = p.green },
    ["@constructor"] = { fg = p.yellow },
    ["@parameter"] = { fg = p.blue, italic = true },
    ["@keyword"] = { link = "Statement" },
    ["@keyword.function"] = { fg = p.yellow, bold = true },
    ["@keyword.operator"] = { fg = p.red },
    ["@keyword.return"] = { fg = p.yellow, bold = true },
    ["@conditional"] = { link = "Repeat" },
    ["@repeat"] = { link = "Repeat" },
    ["@label"] = { link = "Statement" },
    ["@operator"] = { link = "Operator" },
    ["@exception"] = { link = "Statement" },
    ["@variable"] = { fg = p.green },
    ["@variable.builtin"] = { fg = p.green, bold = true },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = p.yellow },
    ["@type.definition"] = { link = "Type" },
    ["@namespace"] = { fg = p.cyan },
    ["@include"] = { link = "PreProc" },
    ["@preproc"] = { link = "PreProc" },
    ["@field"] = { fg = p.green },
    ["@property"] = { fg = p.green },
    ["@punctuation.delimiter"] = { fg = p.special },
    ["@punctuation.bracket"] = { fg = p.special },
    ["@punctuation.special"] = { fg = p.special },
    ["@tag"] = { link = "Special" },
    ["@tag.attribute"] = { fg = p.green },
    ["@tag.delimiter"] = { fg = p.special },
    ["@text"] = { fg = p.green },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { link = "Title" },
    ["@text.uri"] = { fg = p.blue, underline = true },
    ["@text.todo"] = { link = "Todo" },
    ["@text.note"] = { fg = p.cyan, bold = true },
    ["@text.warning"] = { fg = p.yellow, bold = true },
    ["@text.danger"] = { fg = p.red, bold = true },

    -- LSP semantic tokens
    ["@lsp.type.class"] = { link = "Type" },
    ["@lsp.type.decorator"] = { link = "Function" },
    ["@lsp.type.enum"] = { link = "Type" },
    ["@lsp.type.enumMember"] = { link = "Constant" },
    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.interface"] = { link = "Type" },
    ["@lsp.type.keyword"] = { link = "Statement" },
    ["@lsp.type.macro"] = { link = "Macro" },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.namespace"] = { fg = p.cyan },
    ["@lsp.type.parameter"] = { fg = p.blue, italic = true },
    ["@lsp.type.property"] = { fg = p.green },
    ["@lsp.type.struct"] = { link = "Type" },
    ["@lsp.type.type"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { link = "Type" },
    ["@lsp.type.variable"] = { fg = p.green },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.readonly"] = { bold = true },
  }

  -- Links (same as VimL version)
  local links = {
    String = "Constant",
    Character = "Constant",
    Number = "Constant",
    Boolean = "Constant",
    Float = "Number",
    Conditional = "Repeat",
    Label = "Statement",
    Keyword = "Statement",
    Exception = "Statement",
    Include = "PreProc",
    Define = "PreProc",
    Macro = "PreProc",
    PreCondit = "PreProc",
    StorageClass = "Type",
    Structure = "Type",
    Typedef = "Type",
    Tag = "Special",
    SpecialChar = "Special",
    Delimiter = "Special",
    SpecialComment = "Special",
    Debug = "Special",
  }

  for group, target in pairs(links) do
    if not hl[group] then
      hl[group] = { link = target }
    end
  end

  -- Apply user overrides
  for group, def in pairs(overrides) do
    hl[group] = vim.tbl_extend("force", hl[group] or {}, def)
  end

  return hl
end

return M
