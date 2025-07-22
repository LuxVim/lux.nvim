-- Editor highlight groups for core Neovim interface elements
local M = {}

-- Setup editor highlights using color palette and semantic mappings
-- @param colors table: Color system with palette and semantic mappings
-- @param utils table: Utility functions for applying highlights
M.setup = function(colors, utils)
    local c     = colors.palette
    local s     = colors.semantic
    local hl    = utils.highlight_all

    hl({
        Normal           = { fg = c.fg0, bg = c.bg0 },
        NormalFloat      = { fg = c.fg0, bg = c.bg_float },
        NormalNC         = { fg = c.fg1, bg = c.bg0 },
        Comment          = { fg = c.fg2, italic = true },
        Conceal          = { fg = c.fg2 },

        Cursor           = { fg = c.bg0, bg = s.cursor },
        CursorLine       = { bg = c.bg2 },
        CursorColumn     = { bg = c.bg2 },
        CursorLineNr     = { fg = s.cursor, bold = true },
        CursorLineSign   = { fg = c.fg1, bg = c.bg1 },
        CursorLineFold   = { fg = c.fg1, bg = c.bg1 },
        LineNr           = { fg = c.fg2 },
        LineNrAbove      = { fg = c.fg3 },
        LineNrBelow      = { fg = c.fg3 },
        Visual           = { bg = c.purple_20 },
        VisualNOS        = { bg = c.purple_10 },

        Search           = { fg = c.bg0,    bg = s.search },
        IncSearch        = { fg = c.bg0,    bg = s.match },
        CurSearch        = { fg = c.bg0,    bg = s.match },
        Substitute       = { fg = c.bg0,    bg = c.red },
        MatchParen       = { fg = s.info,   bg = c.purple_10, bold = true },

        ColorColumn      = { bg = c.bg_dark },
        SignColumn       = { fg = c.fg2, bg = c.bg0 },
        FoldColumn       = { fg = c.fg2, bg = c.bg0 },
        Folded           = { fg = c.fg2, bg = c.bg1, italic = true },
        VertSplit        = { fg = c.border },
        WinSeparator     = { fg = c.border },
        WinBar           = { fg = c.fg1, bg = c.bg0 },
        WinBarNC         = { fg = c.fg2, bg = c.bg0 },

        StatusLine       = { fg = c.fg0, bg = c.bg2, bold = true },
        StatusLineNC     = { fg = c.fg2, bg = c.bg1 },
        TabLine          = { fg = c.fg2, bg = c.bg1 },
        TabLineFill      = { fg = c.fg2, bg = c.bg1 },
        TabLineSel       = { fg = c.fg0, bg = c.bg2, bold = true },

        Pmenu            = { fg = c.fg1, bg = c.bg_float },
        PmenuSel         = { fg = c.fg0, bg = c.bg3, bold = true },
        PmenuSbar        = { bg = c.bg2 },
        PmenuThumb       = { bg = c.border },
        PmenuKind        = { fg = c.blue,   bg = c.bg_float },
        PmenuKindSel     = { fg = c.blue,   bg = c.bg3 },
        PmenuExtra       = { fg = c.fg2,    bg = c.bg_float },
        PmenuExtraSel    = { fg = c.fg2,    bg = c.bg3 },

        WildMenu         = { fg = c.fg0, bg = c.bg3, bold = true },

        ErrorMsg         = { fg = s.error,      bold = true },
        WarningMsg       = { fg = s.warning,    bold = true },
        ModeMsg          = { fg = c.green,      bold = true },
        MoreMsg          = { fg = c.blue,       bold = true },
        Question         = { fg = c.cyan,       bold = true },
        Title            = { fg = c.magenta,    bold = true },

        DiffAdd          = { fg = s.added,    bg = c.bg1 },
        DiffDelete       = { fg = s.removed,  bg = c.bg1 },
        DiffChange       = { fg = s.modified, bg = c.bg1 },
        DiffText         = { fg = c.yellow, bg = c.bg2, bold = true },
        DiffAdded        = { fg = c.green },
        DiffRemoved      = { fg = c.red },
        DiffFile         = { fg = c.cyan },
        DiffIndexLine    = { fg = c.magenta },

        SpellBad         = { undercurl = true, sp = c.red },
        SpellCap         = { undercurl = true, sp = c.blue },
        SpellLocal       = { undercurl = true, sp = c.cyan },
        SpellRare        = { undercurl = true, sp = c.purple },

        qfLineNr         = { fg = c.yellow },
        qfFileName       = { fg = c.blue },

        Directory        = { fg = c.blue, bold = true },
    })
end
return M
