local M = {}

-- Aurora color variant - Light theme with Northern Lights colors

M.palette = {
    -- BACKGROUND (light theme)
    bg0      = "#dae8eb",   -- darker overlay
    bg1      = "#f2f8f9",   -- slightly darker
    bg2      = "#ecf4f6",   -- highlight base
    bg3      = "#e6f0f3",   -- selection background
    bg4      = "#e0ecef",   -- upper background depth
    bg_dark  = "#dae8eb",   -- darker overlay
    bg_float = "#f2f8f9",   -- floating window background

    -- FOREGROUND
    fg0      = "#1a1a1a",   -- base text
    fg1      = "#3a3a3a",   -- slightly muted
    fg2      = "#5a5a5a",   -- syntax soft
    fg3      = "#7a7a7a",   -- accent/lighter

    -- PRIMARY ACCENTS (Aurora Palette)
    green    = "#00ff87",   -- electric aurora green
    cyan     = "#00e5ff",   -- bright aurora cyan
    teal     = "#00bfa5",   -- aurora teal
    purple   = "#7c4dff",   -- aurora purple
    magenta  = "#e040fb",   -- aurora magenta
    blue     = "#448aff",   -- aurora blue
    red      = "#ff5722",   -- vibrant red
    pink     = "#ff4081",   -- bright pink
    yellow   = "#ffeb3b",   -- bright yellow
    violet   = "#9c27b0",   -- royal violet
    
    -- THEMED COLORS
    aurora_green     = "#00ff87",   -- electric aurora green
    aurora_cyan      = "#00e5ff",   -- bright aurora cyan
    aurora_teal      = "#00bfa5",   -- aurora teal
    aurora_purple    = "#7c4dff",   -- aurora purple
    aurora_magenta   = "#e040fb",   -- aurora magenta
    aurora_blue      = "#448aff",   -- aurora blue
    arctic_white     = "#ffffff",   -- pure arctic white
    ice_crystal      = "#b3e5fc",   -- ice crystal blue

    -- Semi-transparent aurora colors for UI elements
    green_10  = "#f7fefb",  -- 10% green on light bg
    green_20  = "#edfdf5",  -- 20% green on light bg
    cyan_10   = "#f7fdff",  -- 10% cyan on light bg
    cyan_20   = "#e7fbff",  -- 20% cyan on light bg
    purple_10 = "#faf8ff",  -- 10% purple on light bg
    purple_20 = "#f3eeff",  -- 20% purple on light bg

    -- UI
    border = "#00bfa5",
    none   = "NONE",
}

-- Semantic color mappings for consistent theming across components
M.semantic = {
    -- Primary accent (main theme color)
    accent_primary   = M.palette.aurora_cyan,
    accent_secondary = M.palette.aurora_green,
    
    -- Syntax highlighting
    keyword     = M.palette.aurora_purple,
    function_   = M.palette.aurora_blue,
    string      = M.palette.aurora_green,
    number      = M.palette.aurora_magenta,
    boolean     = M.palette.aurora_cyan,
    constant    = M.palette.aurora_teal,
    comment     = M.palette.fg2,
    type        = M.palette.purple,
    operator    = M.palette.magenta,
    
    -- UI elements
    selection   = M.palette.cyan_20,
    search      = M.palette.green_20,
    match       = M.palette.purple_10,
    cursor      = M.palette.aurora_cyan,
    
    -- Status and diagnostics
    info        = M.palette.aurora_blue,
    hint        = M.palette.aurora_cyan,
    warning     = M.palette.yellow,
    error       = M.palette.red,
    
    -- Git and version control
    added       = M.palette.aurora_green,
    modified    = M.palette.yellow,
    removed     = M.palette.red,
    
    -- Plugin specific
    border_accent = M.palette.aurora_teal,
    prompt        = M.palette.aurora_magenta,
    special       = M.palette.aurora_purple,
}

return M
