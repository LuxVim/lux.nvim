local M = {}

M.setup = function(colors, utils)
    local c  = colors.palette
    local s  = colors.semantic
    local hl = utils.highlight_all

    hl({
        GitSignsAdd      = { fg = s.added,    bg = c.bg0  },
        GitSignsChange   = { fg = s.modified, bg = c.bg0  },
        GitSignsDelete   = { fg = s.removed,  bg = c.bg0  },
        GitSignsAddNr    = { fg = s.added                 },
        GitSignsChangeNr = { fg = s.modified              },
        GitSignsDeleteNr = { fg = s.removed               },
        GitSignsAddLn    = { bg = c.bg_dark               },
        GitSignsChangeLn = { bg = c.bg_dark               },
        GitSignsDeleteLn = { bg = c.bg_dark               },
    })
end

return M
