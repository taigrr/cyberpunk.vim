# 🌃 Cyberpunk.vim

A dark Vim/Neovim colorscheme with neon green, cyan, yellow, and red highlights on a black background — inspired by the cyberpunk aesthetic.

![Vim](https://img.shields.io/badge/Vim-8%2B-green?logo=vim)
![Neovim](https://img.shields.io/badge/Neovim-0.5%2B-green?logo=neovim)

## Palette

| Role       | Color   | Hex       |
|------------|---------|-----------|
| Normal     | Green   | `#408000` |
| Comment    | Cyan    | `#0eeafa` |
| Constant   | Blue    | `#0197dd` |
| Statement  | Yellow  | `#ffd302` |
| Operator   | Red     | `#FF0000` |
| Special    | Beige   | `#cdb1ad` |
| Background | Black   | `#000000` |

## Installation

### vim-plug

```vim
Plug 'taigrr/cyberpunk.vim'
```

### lazy.nvim

```lua
{
  "taigrr/cyberpunk.vim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberpunk").setup({
      -- transparent = true,  -- disable background color
      -- overrides = {},      -- override specific highlight groups
    })
    vim.cmd.colorscheme("cyberpunk")
  end,
}
```

### Packer

```lua
use 'taigrr/cyberpunk.vim'
```

### Manual

Copy `colors/cyberpunk.vim` to `~/.vim/colors/` (Vim) or `~/.config/nvim/colors/` (Neovim).

## Usage

### Vim

```vim
colorscheme cyberpunk
```

### Neovim (Lua)

```lua
-- Optional: configure before loading
require("cyberpunk").setup({
  transparent = false,  -- set true for transparent background
  overrides = {
    -- Example: make comments italic
    -- Comment = { fg = "#0eeafa", italic = true },
  },
})

vim.cmd.colorscheme("cyberpunk")
```

The Lua version includes **Treesitter** highlight groups (`@keyword`, `@function`, `@string`, etc.) and **LSP semantic token** highlights out of the box.

## Features

- Full support for Vim 8+ and Neovim 0.5+
- Neovim gets native Lua highlights (Treesitter, LSP, diagnostics)
- Vim falls back to the classic VimL colorscheme automatically
- Configurable via `setup()` — transparency, highlight overrides
- 80+ highlight groups covering syntax, UI, diff, spell, diagnostics, Treesitter, and LSP

## License

MIT — see [LICENSE](LICENSE).
