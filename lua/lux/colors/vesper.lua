local M = {}

M.palette = {
    -- BACKGROUND (dark theme)
    bg0      = "#0f0f23", 
    bg1      = "#1a1a2e", 
    bg2      = "#16213e", 
    bg3      = "#1f2937", 
    bg4      = "#2A305E", 
    bg_dark  = "#0f0f23",
    bg_float = "#1a1a2e",

    -- FOREGROUND
    fg0      = "#ffffff", 
    fg1      = "#e0e7ff", 
    fg2      = "#c7d2fe", 
    fg3      = "#a5b4fc", 

    -- PRIMARY ACCENTS 
    purple   = "#a855f7", 
    indigo   = "#8b5cf6", 
    grape    = "#7c3aed", 
    pink     = "#ec4899", 
    magenta  = "#be185d", 
    red      = "#F7768E", 
    coral    = "#FF9E64", 
    orange   = "#FFB86C", 
    gold     = "#E0AF68", 
    flamengo = "#f6339a",
    -- COOL ACCENTS
    blue     = "#3b82f6", 
    cyan     = "#70cfc4", 
    teal     = "#4daaa0", 
    violet   = "#9D7CD8", 
    aqua     = "#86c9bc", 

    -- Semi-transparent purple colors (converted from RGBA)
    purple_10 = "#1a1940",  -- 10% purple on dark bg
    purple_20 = "#251f4d",  -- 20% purple on dark bg
    purple_30 = "#31255a",  -- 30% purple on dark bg
    purple_50 = "#4a3674",  -- 50% purple on dark bg

    -- UI
    border   = "#2A305E",
    none     = "NONE",
}

return M
