local M = {}

M.setup = function(colors, utils)
    local c = colors.palette
    local s = colors.semantic
    local hl = utils.highlight_all

    -- Luxterm session list highlight groups using semantic colors
    hl({
        -- Session content highlights
        LuxtermSessionIcon           = { fg = s.directory or c.blue,    bg = "NONE" },
        LuxtermSessionName           = { fg = s.normal or c.fg0,        bg = "NONE" },
        LuxtermSessionNameSelected   = { fg = s.title or c.fg0,         bg = "NONE", bold = true },
        LuxtermSessionKey            = { fg = s.special or c.purple,    bg = "NONE", bold = true },
        
        -- Menu item highlights
        LuxtermMenuIcon              = { fg = s.func or c.cyan,         bg = "NONE" },
        LuxtermMenuText              = { fg = s.comment or c.fg2,       bg = "NONE" },
        LuxtermMenuKey               = { fg = s.special or c.purple,    bg = "NONE", bold = true },
        
        -- Selection and state highlights
        LuxtermSessionSelected       = { fg = s.visual_fg or c.fg0,     bg = s.visual_bg or c.bg2, bold = true },
        LuxtermSessionNormal         = { fg = s.nontext or c.fg3,       bg = "NONE" },
        
        -- Border highlights - use float window bg with contrasting fg
        LuxtermBorderSelected        = { fg = c.blue or c.cyan,         bg = c.bg_float or c.bg0 },
        LuxtermBorderNormal          = { fg = c.fg3 or c.gray,          bg = c.bg_float or c.bg0 },
    })
end

return M