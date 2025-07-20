local M = {}

M.setup = function(colors, utils)
  local c  = colors.palette
  local hl = utils.highlight_all

  hl({
    -- Comments & Documentation
    ['@comment']               = { fg = c.fg2, italic = true },

    -- Literals
    ['@string']                = { fg = c.gold },
    ['@character']             = { fg = c.yellow },
    ['@number']                = { fg = c.magenta },
    ['@boolean']               = { fg = c.orange, bold = true },
    ['@float']                 = { fg = c.magenta },

    -- Constants & Variables
    ['@constant']              = { fg = c.pink },
    ['@constant.builtin']      = { fg = c.flamengo },
    ['@constant.macro']        = { fg = c.indigo },
    ['@variable']              = { fg = c.teal },
    ['@variable.builtin']      = { fg = c.flamengo },
    ['@variable.parameter']    = { fg = c.aqua },
    ['@property']              = { fg = c.cyan },

    -- Functions & Methods
    ['@function']              = { fg = c.flamengo, bold = true },
    ['@function.builtin']      = { fg = c.indigo },
    ['@function.call']         = { fg = c.flamengo },
    ['@function.macro']        = { fg = c.indigo, bold = true },
    ['@function.method']       = { fg = c.flamengo },
    ['@function.method.call']  = { fg = c.purple, bold = true },
    ['@constructor']           = { fg = c.orange },

    -- Keywords
    ['@keyword']               = { fg = c.grape, bold = true },
    ['@keyword.import']        = { fg = c.grape, bold = true },
    ['@keyword.function']      = { fg = c.grape },
    ['@keyword.operator']      = { fg = c.coral },
    ['@keyword.coroutine']     = { fg = c.magenta, italic = true },

    -- Types & Attributes
    ['@type']                  = { fg = c.teal, bold = true },
    ['@type.builtin']          = { fg = c.teal },
    ['@type.definition']       = { fg = c.orange },
    ['@type.qualifier']        = { fg = c.indigo },
    ['@attribute']             = { fg = c.indigo, italic = true },

    -- Modules & Namespaces
    ['@namespace']             = { fg = c.blue },
    ['@module']                = { fg = c.blue },

    -- Operators, Control Flow & Punctuation
    ['@operator']              = { fg = c.fg2 },
    ['@conditional']           = { fg = c.grape },
    ['@repeat']                = { fg = c.grape },
    ['@label']                 = { fg = c.indigo },
    ['@punctuation.delimiter'] = { fg = c.fg1 },
    ['@punctuation.bracket']   = { fg = c.fg2 },
    ['@punctuation.special']   = { fg = c.orange },

    -- Tags (HTML, XML, JSX)
    ['@tag']                   = { fg = c.orange },
    ['@tag.attribute']         = { fg = c.coral },
    ['@tag.delimiter']         = { fg = c.fg3 },

    -- Decorators & Annotations
    ['@decorator']             = { fg = c.indigo, italic = true },
    ['@annotation']            = { fg = c.indigo, italic = true },

    -- Embedded/injected languages
    ['@embedded']              = { fg = c.flamengo },
    ['@language']              = { fg = c.cyan },
  })
end

return M
