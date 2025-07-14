local M = {}

M.setup = function(colors, utils)
    local c  = colors.palette
    local hl = utils.highlight_all

    hl({
        TelescopeBorder         = { fg = c.gold,      bg = c.bg_float                 },
        TelescopeNormal         = { fg = c.fg0,       bg = c.bg_float                 },
        TelescopeSelection      = { fg = c.fg0,       bg = c.bg3,      bold = true    },
        TelescopeSelectionCaret = { fg = c.coral                                    },
        TelescopeMultiSelection = { fg = c.magenta                                  },
        TelescopeMultiIcon      = { fg = c.coral                                    },
        TelescopeMatching       = { fg = c.orange,    bold = true                    },
        TelescopePromptPrefix   = { fg = c.pink                                     },
        TelescopePromptNormal   = { fg = c.fg0,       bg = c.bg_float                 },
        TelescopePromptBorder   = { fg = c.gold,      bg = c.bg_float                 },
    })
end

return M
