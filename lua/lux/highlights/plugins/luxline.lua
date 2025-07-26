local M = {}

local function get_accent_colors(colors)
    local c = colors.palette
    
    return {
        primary = c.purple or c.accent_primary or c.blue,
        secondary = c.indigo or c.accent_secondary or c.cyan,
        tertiary = c.grape or c.violet or c.magenta,
        accent1 = c.blue or c.cyan,
        accent2 = c.green or c.teal,
        accent3 = c.cyan or c.blue,
        accent4 = c.magenta or c.purple or c.pink,
        accent5 = c.yellow or c.gold or c.orange,
        warning = c.orange or c.yellow or c.gold,
        error = c.red or c.magenta,
        info = c.blue or c.cyan,
        hint = c.cyan or c.teal or c.blue
    }
end

M.setup = function(colors, utils)
    local c = colors.palette
    local hl = utils.highlight_all
    local accents = get_accent_colors(colors)

    -- Core luxline highlight groups
    hl({
        -- Statusline item highlights (left side)
        LuxlineItemLeft1         = { fg = c.bg0,    bg = accents.accent1   },
        LuxlineItemLeft2         = { fg = c.fg1,    bg = c.bg2             },
        LuxlineItemLeft3         = { fg = c.fg2,    bg = c.bg1             },
        LuxlineItemLeft4         = { fg = c.fg3,    bg = c.bg3             },
        LuxlineItemLeft5         = { fg = c.bg0,    bg = accents.primary   },
        
        -- Statusline item highlights (right side)
        LuxlineItemRight1        = { fg = c.bg0,    bg = accents.accent2   },
        LuxlineItemRight2        = { fg = c.fg1,    bg = c.bg2             },
        LuxlineItemRight3        = { fg = c.fg2,    bg = c.bg1             },
        LuxlineItemRight4        = { fg = c.fg3,    bg = c.bg3             },
        LuxlineItemRight5        = { fg = c.bg0,    bg = accents.warning   },
        
        -- Winbar item highlights (left side)
        LuxlineWinbarLeft1       = { fg = c.bg0,    bg = accents.accent3   },
        LuxlineWinbarLeft2       = { fg = c.fg1,    bg = c.bg1             },
        LuxlineWinbarLeft3       = { fg = c.fg2,    bg = c.bg2             },
        LuxlineWinbarLeft4       = { fg = c.fg3,    bg = c.bg3             },
        LuxlineWinbarLeft5       = { fg = c.bg0,    bg = accents.accent4   },
        
        -- Winbar item highlights (right side)
        LuxlineWinbarRight1      = { fg = c.bg0,    bg = accents.accent5   },
        LuxlineWinbarRight2      = { fg = c.fg1,    bg = c.bg1             },
        LuxlineWinbarRight3      = { fg = c.fg2,    bg = c.bg2             },
        LuxlineWinbarRight4      = { fg = c.fg3,    bg = c.bg3             },
        LuxlineWinbarRight5      = { fg = c.bg0,    bg = accents.error     },
        
        -- Separator base highlights (dynamic ones are created by luxline)
        LuxlineSeparator         = { fg = c.bg3,    bg = c.bg0             },
        LuxlineWinbarSep         = { fg = c.bg3,    bg = c.bg0             },
        
        -- Special mode highlights
        LuxlineInsert            = { fg = c.bg0,    bg = accents.accent2   },
        LuxlineVisual            = { fg = c.bg0,    bg = accents.primary   },
        LuxlineReplace           = { fg = c.bg0,    bg = accents.error     },
        LuxlineCommand           = { fg = c.bg0,    bg = accents.accent5   },
        LuxlineNormal            = { fg = c.bg0,    bg = accents.accent1   },
        
        -- Git status highlights
        LuxlineGitBranch         = { fg = accents.primary,  bg = c.bg2     },
        LuxlineGitAdded          = { fg = accents.accent2,  bg = c.bg2     },
        LuxlineGitModified       = { fg = accents.warning,  bg = c.bg2     },
        LuxlineGitRemoved        = { fg = accents.error,    bg = c.bg2     },
        
        -- File status highlights
        LuxlineFilename          = { fg = c.fg1,            bg = c.bg2     },
        LuxlineFileModified      = { fg = accents.warning,  bg = c.bg2     },
        LuxlineFileReadonly      = { fg = accents.error,    bg = c.bg2     },
        
        -- Diagnostic highlights
        LuxlineDiagnosticError   = { fg = accents.error,    bg = c.bg2     },
        LuxlineDiagnosticWarn    = { fg = accents.warning,  bg = c.bg2     },
        LuxlineDiagnosticInfo    = { fg = accents.info,     bg = c.bg2     },
        LuxlineDiagnosticHint    = { fg = accents.hint,     bg = c.bg2     },
        
        -- Progress and location highlights
        LuxlineProgress          = { fg = c.fg2,            bg = c.bg2     },
        LuxlineLocation          = { fg = c.fg2,            bg = c.bg2     },
        LuxlinePercent           = { fg = c.fg2,            bg = c.bg2     },
    })
end

return M
