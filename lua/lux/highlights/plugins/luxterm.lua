local M = {}

M.setup = function(colors, utils)
    local c = colors.semantic
    local p = colors.palette
    
    -- Session list highlights - use palette colors since semantic mappings are limited
    utils.highlight("LuxtermSessionIcon", {
        fg = p.fg3, -- muted text
    })
    
    utils.highlight("LuxtermSessionIconSelected", {
        fg = p.green, -- warm accent
        bold = true,
    })

    utils.highlight("LuxtermSessionName", {
        fg = p.fg3, -- primary text
    })
    
    utils.highlight("LuxtermSessionNameSelected", {
        fg = c.floating_special, -- primary text
        bold = true,
    })
    
    utils.highlight("LuxtermSessionKey", {
        fg = c.prompt, -- semantic purple
        bold = true,
    })
    
    utils.highlight("LuxtermSessionSelected", {
        fg = c.border_accent, -- warm accent
        bold = true,
    })
    
    utils.highlight("LuxtermSessionNormal", {
        fg = p.fg3, -- muted text
    })
    
    utils.highlight("LuxtermBorderSelected", {
        fg = c.border_accent, -- semantic blue
        bold = true,
    })
    
    utils.highlight("LuxtermBorderNormal", {
        fg = p.fg3, -- muted
    })
    
    -- Menu highlights
    utils.highlight("LuxtermMenuIcon", {
        fg = c.floating_special,
    })
    
    utils.highlight("LuxtermMenuText", {
        fg = p.fg3, -- secondary text
    })
    
    utils.highlight("LuxtermMenuKey", {
        fg = c.prompt, -- semantic purple
        bold = true,
    })
    
    -- Preview pane highlights
    utils.highlight("LuxtermPreviewTitle", {
        fg = c.floating_special,
        bold = true,
    })
    
    utils.highlight("LuxtermPreviewContent", {
        fg = p.fg3, -- secondary text
    })
    
    utils.highlight("LuxtermPreviewEmpty", {
        fg = p.fg3, -- muted text
        italic = true,
    })
end


return M
