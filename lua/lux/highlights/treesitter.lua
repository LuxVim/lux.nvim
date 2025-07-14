local M = {}

M.setup = function(colors, utils)
    local c  = colors.palette
    local hl = utils.highlight_all

    hl({
        ['@comment']               = { fg = c.fg2, italic = true },
        ['@constant']              = { fg = c.orange },
        ['@string']                = { fg = c.gold },
        ['@character']             = { fg = c.yellow },
        ['@number']                = { fg = c.magenta },
        ['@boolean']               = { fg = c.orange, bold = true },
        ['@float']                 = { fg = c.magenta },

        ['@function']              = { fg = c.pink, bold = true },
        ['@function.builtin']      = { fg = c.pink, italic = true },
        ['@function.call']         = { fg = c.pink },
        ['@function.macro']        = { fg = c.orange },
        ['@function.method']       = { fg = c.pink },
        ['@function.method.call']  = { fg = c.pink },
        ['@constructor']           = { fg = c.orange },

        ['@type']                  = { fg = c.yellow },
        ['@type.definition']       = { fg = c.red, bold = true },
        ['@attribute']             = { fg = c.orange },
        ['@property']              = { fg = c.coral },

        ['@operator']              = { fg = c.coral },
        ['@keyword']               = { fg = c.orange, bold = true },
        ['@keyword.coroutine']     = { fg = c.magenta, bold = true },
    })
end

return M
