local M = {}

M.setup = function(colors, utils)
  local c  = colors.palette
  local hl = utils.highlight_all

  hl({
    -- Prefer warm colors for main elements
    Normal            = { fg = c.fg0, bg = c.bg0 },
    Comment           = { fg = c.fg2, italic = true },
    Constant          = { fg = c.pink2},
    Identifier        = { fg = c.pink },
    Statement         = { fg = c.magenta, bold = true },
    PreProc           = { fg = c.coral },
    Type              = { fg = c.aqua},
    Special           = { fg = c.blue},
    Underlined        = { fg = c.coral, underline = true },
    Ignore            = { fg = c.fg3 },
    Error             = { fg = c.red, bold = true },
    Todo              = { fg = c.yellow, bg = c.bg1, bold = true },
    Function          = { fg = c.pink, bold = true },
    Keyword           = { fg = c.orange, bold = true },
    String            = { fg = c.gold },
    Character         = { fg = c.yellow },
    Number            = { fg = c.magenta },
    Boolean           = { fg = c.orange, bold = true },
    Float             = { fg = c.magenta },

    -- UI/utility highlights (border, status, selection)
    StatusLine        = { fg = c.fg0, bg = c.bg2, bold = true },
    StatusLineNC      = { fg = c.fg1, bg = c.bg1 },
    VertSplit         = { fg = c.border },

    Cursor            = { fg = c.bg0, bg = c.fg0 },
    CursorLine        = { bg = c.bg1 },
    CursorLineNr      = { fg = c.yellow, bold = true },
    LineNr            = { fg = c.fg2 },
    Visual            = { bg = c.bg3 },

    Search            = { fg = c.bg0, bg = c.yellow },
    IncSearch         = { fg = c.bg0, bg = c.orange },
    MatchParen        = { fg = c.coral, bg = c.bg3, bold = true },
    Directory         = { fg = c.gold, bold = true },

    -- Spell
    SpellBad          = { undercurl = true, sp = c.red },
    SpellCap          = { undercurl = true, sp = c.magenta },
    SpellLocal        = { undercurl = true, sp = c.coral },
    SpellRare         = { undercurl = true, sp = c.gold },
  })
end

return M
