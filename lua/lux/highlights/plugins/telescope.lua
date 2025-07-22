local M = {}

M.setup = function(colors, utils)
    local c  = colors.palette
    local s  = colors.semantic
    local hl = utils.highlight_all

    hl({
        TelescopeBorder         = { fg = s.border_accent, bg = c.bg_float                 },
        TelescopeNormal         = { fg = c.fg0,           bg = c.bg_float                 },
        TelescopeSelection      = { fg = c.fg0,           bg = s.selection,   bold = true },
        TelescopeSelectionCaret = { fg = s.accent_primary                               },
        TelescopeMultiSelection = { fg = s.constant                                     },
        TelescopeMultiIcon      = { fg = s.accent_primary                               },
        TelescopeMatching       = { fg = s.match,         bold = true                   },
        TelescopePromptPrefix   = { fg = s.prompt                                       },
        TelescopePromptNormal   = { fg = c.fg0,           bg = c.bg_float                 },
        TelescopePromptBorder   = { fg = s.border_accent, bg = c.bg_float                 },
    })
end

return M
