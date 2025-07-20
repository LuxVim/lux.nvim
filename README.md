# lux.nvim

> A beautiful, themeable Neovim colorscheme with vibrant dark and light variants.

## ✨ Features

- **Vesper**: Perfect for late-night coding sessions
- **Prism**: Ideal for bright, focused daytime work
- **Carefully crafted** color palettes for optimal readability
- **Highly customizable** with extensive configuration options
- **Terminal support** with matching colors
- **Plugin integration** for popular Neovim plugins

## 🎨 Variants

| Variant | Style | Description |
|---------|-------|-------------|
| **Vesper** | Dark | A rich, atmospheric theme inspired by twilight and night skies |
| **Prism** | Light | A vibrant light theme inspired by the clarity and color of refracted light |

## 🌈 Color Palette

### Vesper (Dark Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Deep Space | `#0f0f23` | Main background |
| Outer Layer | `#1a1a2e` | Secondary background |
| Inner Layer | `#16213e` | Tertiary background |
| Pure White | `#ffffff` | Primary text |
| Pale Indigo | `#e0e7ff` | Secondary text |
| Accent Purple | `#a855f7` | Keywords, operators |
| Vibrant Pink | `#ec4899` | Strings, constants |
| Soft Coral | `#FF9E64` | Functions, methods |
| Light Gold | `#E0AF68` | Variables, identifiers |

### Prism (Light Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Pure White | `#ffffff` | Main background |
| Slate 50 | `#f8fafc` | Secondary background |
| Slate 100 | `#f1f5f9` | Tertiary background |
| Slate 900 | `#0f172a` | Primary text |
| Slate 800 | `#1e293b` | Secondary text |
| Purple 600 | `#7c3aed` | Keywords, operators |
| Pink 500 | `#ec4899` | Strings, constants |
| Orange 500 | `#f97316` | Functions, methods |
| Yellow 500 | `#eab308` | Variables, identifiers |

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "nvim-themes/lux.nvim",
  priority = 1000,
  config = function()
    require("lux").setup({
      variant = "vesper", -- "vesper" (dark) or "prism" (light)
    })
    vim.cmd([[colorscheme lux]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
  "nvim-themes/lux.nvim",
  config = function()
    require("lux").setup({
      variant = "vesper", -- "vesper" (dark) or "prism" (light)
    })
    vim.cmd([[colorscheme lux]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'nvim-themes/lux.nvim'

" Add to your init.vim after plug#end()
lua << EOF
require("lux").setup({
  variant = "vesper", -- "vesper" (dark) or "prism" (light)
})
EOF
colorscheme lux
```

### Manual Installation (No Package Manager)
```bash
# Clone the repository
git clone https://github.com/nvim-themes/lux.nvim ~/.config/nvim/colors/lux.nvim

# Or for Vim
git clone https://github.com/nvim-themes/lux.nvim ~/.vim/colors/lux.nvim
```

Add to your `init.lua` or `init.vim`:
```lua
-- init.lua
vim.opt.rtp:prepend(vim.fn.stdpath("config") .. "/colors/lux.nvim")
require("lux").setup()
vim.cmd([[colorscheme lux]])
```

```vim
" init.vim
set rtp+=~/.config/nvim/colors/lux.nvim
lua require("lux").setup()
colorscheme lux
```

## 🚀 Usage

### Quick Start
```vim
" Use default variant (vesper)
colorscheme lux

" Use specific variants
colorscheme lux-vesper
colorscheme lux-prism
```

### Advanced Configuration
```lua
require("lux").setup({
  variant = "prism",        -- "vesper" (dark) or "prism" (light)
  transparent = false,      -- Enable transparent background
  dim_inactive = false,     -- Dim inactive windows
  
  styles = {
    comments = { italic = true },     -- Style for comments
    keywords = { bold = true },       -- Style for keywords
    functions = { bold = true },      -- Style for function names
  },
})

-- Apply the colorscheme
vim.cmd([[colorscheme lux]])
```

### Dynamic Theme Switching
```lua
-- Switch between variants programmatically
require("lux").setup({ variant = "vesper" })
vim.cmd([[colorscheme lux]])

-- Later switch to light theme
require("lux").setup({ variant = "prism" })
vim.cmd([[colorscheme lux]])
```

## 🤝 Contributing

Contributions welcome! Feel free to open issues, suggest improvements, or submit pull requests.

## 🪪 License

MIT License - see [LICENSE](LICENSE) for details.
