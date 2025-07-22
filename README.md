# lux.nvim

A visually rich Neovim colorscheme that balances form and function — radiant in light, deep in the dark.

## ✨ Features

- **Vesper**: Perfect for late-night coding sessions
- **Umbra**: Mystical dark theme with purple shadows
- **Aurora**: Northern Lights inspired light theme
- **Eos**: Warm dawn-inspired light theme with coral tones
- **Chroma**: Vibrant spectrum light theme with pure colors
- **Carefully crafted** color palettes for optimal readability
- **Highly customizable** with extensive configuration options
- **Terminal support** with matching colors
- **Plugin integration** for popular Neovim plugins

## 🎨 Variants

| Variant | Style | Description |
|---------|-------|-------------|
| **Vesper** | Dark | A rich, atmospheric theme inspired by twilight and night skies |
| **Umbra** | Dark | Mystical dark theme with purple shadows and ethereal tones |
| **Aurora** | Light | Northern Lights inspired theme with electric colors |
| **Eos** | Light | Warm dawn theme with coral reef and sunrise colors |
| **Chroma** | Light | Pure spectrum light theme with vibrant colors |

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


### Umbra (Dark Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Deep Void | `#0a0310` | Main background |
| Dark Purple | `#180c24` | Secondary background |
| Purple Shadow | `#221232` | Tertiary background |
| Mystic White | `#f4edff` | Primary text |
| Soft Lavender | `#dbcdf0` | Secondary text |
| Imperial Purple | `#6b60e3` | Keywords, operators |
| Glam Magenta | `#c471ed` | Strings, constants |
| Lucid Blue | `#0056cc` | Functions, methods |
| Arcane Green | `#10b981` | Variables, identifiers |

### Aurora (Light Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Arctic Base | `#dae8eb` | Main background |
| Ice Crystal | `#f2f8f9` | Secondary background |
| Frost Layer | `#ecf4f6` | Tertiary background |
| Deep Charcoal | `#1a1a1a` | Primary text |
| Charcoal Gray | `#3a3a3a` | Secondary text |
| Aurora Purple | `#7c4dff` | Keywords, operators |
| Aurora Green | `#00ff87` | Strings, constants |
| Aurora Blue | `#448aff` | Functions, methods |
| Aurora Magenta | `#e040fb` | Variables, identifiers |

### Eos (Light Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Dawn Base | `#fadfd9` | Main background |
| Coral Glow | `#fef4f1` | Secondary background |
| Sunrise Layer | `#fdefeb` | Tertiary background |
| Deep Charcoal | `#1a1a1a` | Primary text |
| Charcoal Gray | `#3a3a3a` | Secondary text |
| Coral Red | `#ff6b6b` | Keywords, operators |
| Sea Green | `#20bf55` | Strings, constants |
| Reef Teal | `#00a693` | Functions, methods |
| Sunset Yellow | `#ffd93d` | Variables, identifiers |

### Chroma (Light Theme)
| Color | Hex | Usage |
|-------|-----|-------|
| Spectrum Base | `#f1ecdb` | Main background |
| Prism Glow | `#fdfbf3` | Secondary background |
| Light Layer | `#faf7ed` | Tertiary background |
| Deep Charcoal | `#1a1a1a` | Primary text |
| Charcoal Gray | `#3a3a3a` | Secondary text |
| Hibiscus Red | `#ee4b2b` | Keywords, operators |
| Palm Green | `#228b22` | Strings, constants |
| Ocean Blue | `#006994` | Functions, methods |
| Mango Orange | `#ff8c42` | Variables, identifiers |

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
  "nvim-themes/lux.nvim",
  priority = 1000,
  config = function()
    require("lux").setup({
      variant = "vesper", -- "vesper", "umbra", "aurora", "eos", or "chroma"
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
      variant = "vesper", -- "vesper", "umbra", "aurora", "eos", or "chroma"
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
  variant = "vesper", -- "vesper", "umbra", "aurora", "eos", or "chroma"
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
colorscheme lux-umbra
colorscheme lux-aurora
colorscheme lux-eos
colorscheme lux-chroma
```

### Advanced Configuration
```lua
require("lux").setup({
  variant = "vesper",           -- "vesper", "umbra", "aurora", "eos", or "chroma"
  transparent = false,          -- Enable transparent background
  dim_inactive = false,         -- Dim inactive windows
  
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

-- Switch to light themes
require("lux").setup({ variant = "aurora" })
vim.cmd([[colorscheme lux]])

require("lux").setup({ variant = "eos" })
vim.cmd([[colorscheme lux]])

require("lux").setup({ variant = "chroma" })
vim.cmd([[colorscheme lux]])

-- Switch to dark theme
require("lux").setup({ variant = "umbra" })
vim.cmd([[colorscheme lux]])
```

## 🎯 Plugin Support

Lux includes specialized highlighting for popular Neovim plugins:

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** - Enhanced search interface styling
- **[GitSigns](https://github.com/lewis6991/gitsigns.nvim)** - Git integration with semantic colors
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Completion menu with proper contrast
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** - Plugin manager interface
- **[Mason.nvim](https://github.com/williamboman/mason.nvim)** - LSP installer interface
- **[WhichKey](https://github.com/folke/which-key.nvim)** - Keybinding help interface
- **[Dashboard](https://github.com/nvimdev/dashboard-nvim)** - Startup screen customization
- **[Noice](https://github.com/folke/noice.nvim)** - Command line and notification styling
- **[Mini.nvim](https://github.com/echasnovski/mini.nvim)** - Various mini plugin integrations
- **[NvimTree](https://github.com/kyazdani42/nvim-tree.lua)** - File explorer with git status colors
- **[indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)** - Indentation guides styling
- **[Flash](https://github.com/folke/flash.nvim)** - Jump/search navigation plugin
- **[Leap](https://github.com/ggandor/leap.nvim)** - Motion plugin for quick navigation
- **[nvim-notify](https://github.com/rcarriga/nvim-notify)** - Notification system styling

## 🤝 Contributing

Contributions welcome! Feel free to open issues, suggest improvements, or submit pull requests.

## 🪪 License

MIT License - see [LICENSE](LICENSE) for details.
