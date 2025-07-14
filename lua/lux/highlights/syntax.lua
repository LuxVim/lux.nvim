local M = {}

M.setup = function(colors, utils)
  local c  = colors.palette
  local hl = utils.highlight_all

  hl({
    -- Core UI
    Normal            = { fg = c.fg0, bg = c.bg0 },
    Cursor            = { fg = c.bg0, bg = c.fg0 },
    CursorLine        = { bg = c.bg1 },
    CursorLineNr      = { fg = c.orange, bold = true },
    LineNr            = { fg = c.fg3 },
    Visual            = { bg = c.bg3 },
    StatusLine        = { fg = c.fg0, bg = c.bg2, bold = true },
    StatusLineNC      = { fg = c.fg1, bg = c.bg1 },
    VertSplit         = { fg = c.border },

    -- Search & Matching
    Search            = { fg = c.bg0, bg = c.teal },
    IncSearch         = { fg = c.bg0, bg = c.pink },
    MatchParen        = { fg = c.indigo, bg = c.bg3, bold = true },
    Directory         = { fg = c.blue, bold = true },

    -- Comments and Documentation
    Comment           = { fg = c.fg2, italic = true },

    -- Constants & Literals
    Constant          = { fg = c.pink },
    Number            = { fg = c.red },
    Boolean           = { fg = c.orange, bold = true },
    Float             = { fg = c.magenta },
    String            = { fg = c.gold },
    Character         = { fg = c.yellow },

    -- Identifiers and Functions
    Identifier        = { fg = c.flamengo },
    Function          = { fg = c.flamengo, bold = true },

    -- Keywords & Statements
    Keyword           = { fg = c.grape, bold = true },
    Statement         = { fg = c.magenta, bold = true },
    Conditional       = { fg = c.grape },
    Repeat            = { fg = c.grape },

    -- Preprocessor / Attributes / Macros
    PreProc           = { fg = c.indigo },
    Macro             = { fg = c.indigo, bold = true },

    -- Types & Structures
    Type              = { fg = c.teal, bold = true },
    Typedef           = { fg = c.orange },
    Structure         = { fg = c.orange },
    StorageClass      = { fg = c.indigo },

    -- Operators and Miscellaneous
    Operator          = { fg = c.coral },
    Special           = { fg = c.blue },
    Underlined        = { fg = c.orange, underline = true },
    Ignore            = { fg = c.bg3 },

    -- Diagnostics
    Error             = { fg = c.red, bold = true },
    Todo              = { fg = c.gold, bg = c.bg1, bold = true },

    -- Spelling
    SpellBad          = { undercurl = true, sp = c.red },
    SpellCap          = { undercurl = true, sp = c.magenta },
    SpellLocal        = { undercurl = true, sp = c.coral },
    SpellRare         = { undercurl = true, sp = c.gold },
  })
end

return M
