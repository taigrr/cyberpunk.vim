local M = {}

---@class CyberpunkConfig
---@field transparent? boolean Disable background color
---@field overrides? table<string, vim.api.keyset.highlight> Override specific highlight groups
M.config = {
  transparent = false,
  overrides = {},
}

---Configure cyberpunk before loading.
---@param opts? CyberpunkConfig
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

---Load the colorscheme.
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "cyberpunk"

  local palette = require("cyberpunk.palette")
  local highlights = require("cyberpunk.highlights")

  -- Apply transparency
  local p = vim.deepcopy(palette)
  if M.config.transparent then
    p.black = p.none
    p.dark_bg = p.none
  end

  local groups = highlights.groups(p, M.config)

  for group, hl in pairs(groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
