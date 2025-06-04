local M = {}

local colors = {
    green = "#408000",
    cyan = "#0eeafa",
    blue = "#0197dd",
    beige = "#cdb1ad",
    yellow = "#ffd302",
    red = "#FF0000",
    error_bg = "#0C35BF",
    black = "black",
    menu_bg = "#408000",
    menu_sel_fg = "#0197DD",
    menu_sel_bg = "#FFD302",
}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.set()
    vim.o.background = "dark"
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "cyberpunk"

    hl("Normal",       {bg = colors.black, fg = colors.green, ctermfg = 70})
    hl("Comment",      {cterm = {"bold"}, fg = colors.cyan, ctermfg = 14})
    hl("Constant",     {cterm = {"underline"}, fg = colors.blue, ctermfg = 75})
    hl("Special",      {cterm = {"bold"}, fg = colors.beige, ctermfg = 224})
    hl("Identifier",   {cterm = {"bold"}, fg = colors.blue, ctermfg = 75})
    hl("Statement",    {cterm = {"bold"}, fg = colors.yellow, ctermfg = 226, bold = true})
    hl("PreProc",      {cterm = {"underline"}, fg = colors.cyan, ctermfg = 14})
    hl("Type",         {cterm = {"underline"}, fg = colors.yellow, ctermfg = 226, bold = true})
    hl("Function",     {cterm = {"bold"}, fg = colors.green, ctermfg = 70})
    hl("Repeat",       {cterm = {"underline"}, fg = colors.yellow, ctermfg = 226})
    hl("Operator",     {fg = colors.red, ctermfg = 9})
    hl("Ignore",       {fg = "bg", ctermfg = "black"})
    hl("Error",        {cterm = {"reverse"}, fg = colors.red, bg = colors.error_bg, ctermfg = 9, ctermbg = 54})
    hl("Todo",         {cterm = {"standout"}, fg = colors.blue, bg = colors.yellow, ctermfg = 226, ctermbg = 75})
    hl("Pmenu",        {fg = colors.black, bg = colors.menu_bg, ctermfg = "black", ctermbg = 70})
    hl("PmenuSel",     {fg = colors.menu_sel_fg, bg = colors.menu_sel_bg, ctermfg = 14, ctermbg = 226})

    vim.cmd [[
        hi link String Constant
        hi link Character Constant
        hi link Number Constant
        hi link Boolean Constant
        hi link Float Number
        hi link Conditional Repeat
        hi link Label Statement
        hi link Keyword Statement
        hi link Exception Statement
        hi link Include PreProc
        hi link Define PreProc
        hi link Macro PreProc
        hi link PreCondit PreProc
        hi link StorageClass Type
        hi link Structure Type
        hi link Typedef Type
        hi link Tag Special
        hi link SpecialChar Special
        hi link Delimiter Special
        hi link SpecialComment Special
        hi link Debug Special
    ]]
end

return M
