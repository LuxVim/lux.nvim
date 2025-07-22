-- LSP (Language Server Protocol) and diagnostic highlighting definitions
-- These groups provide consistent styling for LSP features and diagnostics
local M = {}

-- Sets up LSP-related highlight groups including diagnostics and references
-- @param colors table: Color palette and semantic color mappings  
-- @param utils table: Utility functions including highlight_all
M.setup = function(colors, utils)
    local c     = colors.palette
    local s     = colors.semantic
    local hl    = utils.highlight_all

    hl({
        -- Basic diagnostic colors
        DiagnosticError           = { fg = s.error },                     -- Error diagnostic text
        DiagnosticWarn            = { fg = s.warning },                   -- Warning diagnostic text
        DiagnosticInfo            = { fg = s.info },                      -- Info diagnostic text
        DiagnosticHint            = { fg = s.hint },                      -- Hint diagnostic text
        DiagnosticOk              = { fg = s.added },                     -- Ok diagnostic text

        -- Sign column diagnostics
        DiagnosticSignError       = { fg = s.error, bg = c.bg0 },         -- Error signs in gutter
        DiagnosticSignWarn        = { fg = s.warning, bg = c.bg0 },       -- Warning signs in gutter
        DiagnosticSignInfo        = { fg = s.info, bg = c.bg0 },          -- Info signs in gutter
        DiagnosticSignHint        = { fg = s.hint, bg = c.bg0 },          -- Hint signs in gutter
        DiagnosticSignOk          = { fg = s.added, bg = c.bg0 },         -- Ok signs in gutter

        -- Virtual text diagnostics (inline text)
        DiagnosticVirtualTextError   = { fg = s.error, bg = c.bg_dark },   -- Inline error text
        DiagnosticVirtualTextWarn    = { fg = s.warning, bg = c.bg_dark }, -- Inline warning text
        DiagnosticVirtualTextInfo    = { fg = s.info, bg = c.bg_dark },    -- Inline info text
        DiagnosticVirtualTextHint    = { fg = s.hint, bg = c.bg_dark },    -- Inline hint text
        DiagnosticVirtualTextOk      = { fg = s.added, bg = c.bg_dark },   -- Inline ok text

        -- Underline diagnostics
        DiagnosticUnderlineError     = { undercurl = true, sp = s.error }, -- Error underlines
        DiagnosticUnderlineWarn      = { undercurl = true, sp = s.warning }, -- Warning underlines
        DiagnosticUnderlineInfo      = { undercurl = true, sp = s.info },  -- Info underlines
        DiagnosticUnderlineHint      = { undercurl = true, sp = s.hint },  -- Hint underlines
        DiagnosticUnderlineOk        = { undercurl = true, sp = s.added }, -- Ok underlines

        -- Floating window diagnostics
        DiagnosticFloatingError      = { fg = s.error, bg = c.bg_float },   -- Error in floating windows
        DiagnosticFloatingWarn       = { fg = s.warning, bg = c.bg_float }, -- Warning in floating windows
        DiagnosticFloatingInfo       = { fg = s.info, bg = c.bg_float },    -- Info in floating windows
        DiagnosticFloatingHint       = { fg = s.hint, bg = c.bg_float },    -- Hint in floating windows
        DiagnosticFloatingOk         = { fg = s.added, bg = c.bg_float },   -- Ok in floating windows

        -- LSP reference highlighting
        LspReferenceText             = { bg = c.bg2 },                     -- Text references
        LspReferenceRead             = { bg = c.bg2 },                     -- Read references
        LspReferenceWrite            = { bg = c.bg2 },                     -- Write references
        
        -- LSP features
        LspInlayHint                 = { fg = s.hint, bg = c.bg_dark, italic = true }, -- Inlay hints
        LspCodeLens                  = { fg = c.fg3, italic = true },      -- Code lens text
        LspCodeLensSeparator         = { fg = c.fg3 },                     -- Code lens separators
    })
end
return M
