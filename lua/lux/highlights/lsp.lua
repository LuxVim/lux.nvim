local M = {}

M.setup = function(colors, utils)
    local c     = colors.palette
    local hl    = utils.highlight_all

    hl({
        DiagnosticError           = { fg = c.red },
        DiagnosticWarn            = { fg = c.orange },
        DiagnosticInfo            = { fg = c.pink },
        DiagnosticHint            = { fg = c.coral },
        DiagnosticOk              = { fg = c.green },

        DiagnosticSignError       = { fg = c.red, bg = c.bg0 },
        DiagnosticSignWarn        = { fg = c.orange, bg = c.bg0 },
        DiagnosticSignInfo        = { fg = c.pink, bg = c.bg0 },
        DiagnosticSignHint        = { fg = c.coral, bg = c.bg0 },
        DiagnosticSignOk          = { fg = c.green, bg = c.bg0 },

        DiagnosticVirtualTextError   = { fg = c.red, bg = c.bg_dark },
        DiagnosticVirtualTextWarn    = { fg = c.orange, bg = c.bg_dark },
        DiagnosticVirtualTextInfo    = { fg = c.pink, bg = c.bg_dark },
        DiagnosticVirtualTextHint    = { fg = c.coral, bg = c.bg_dark },
        DiagnosticVirtualTextOk      = { fg = c.green, bg = c.bg_dark },

        DiagnosticUnderlineError     = { undercurl = true, sp = c.red },
        DiagnosticUnderlineWarn      = { undercurl = true, sp = c.orange },
        DiagnosticUnderlineInfo      = { undercurl = true, sp = c.pink },
        DiagnosticUnderlineHint      = { undercurl = true, sp = c.coral },
        DiagnosticUnderlineOk        = { undercurl = true, sp = c.green },

        DiagnosticFloatingError      = { fg = c.red, bg = c.bg_float },
        DiagnosticFloatingWarn       = { fg = c.orange, bg = c.bg_float },
        DiagnosticFloatingInfo       = { fg = c.pink, bg = c.bg_float },
        DiagnosticFloatingHint       = { fg = c.coral, bg = c.bg_float },
        DiagnosticFloatingOk         = { fg = c.green, bg = c.bg_float },

        LspReferenceText             = { bg = c.bg2 },
        LspReferenceRead             = { bg = c.bg2 },
        LspReferenceWrite            = { bg = c.bg2 },
        LspInlayHint                 = { fg = c.gold, bg = c.bg_dark, italic = true },
        LspCodeLens                  = { fg = c.fg3, italic = true },
        LspCodeLensSeparator         = { fg = c.fg3 },
    })
end
return M
