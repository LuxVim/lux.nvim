local M = {}

-- Chroma color variant - Light theme with vibrant tropical colors
-- Inspired by tropical beaches, fruits, and paradise sunsets
M.palette = {
    -- BACKGROUND (light theme)
    -- bg0      = "#fffef9",   -- base background
    bg0      = "#f1ecdb",   -- darker overlay
    bg1      = "#fdfbf3",   -- slightly darker
    bg2      = "#faf7ed",   -- highlight base
    bg3      = "#f7f3e7",   -- selection background
    bg4      = "#f4f0e1",   -- upper background depth
    bg_dark  = "#f1ecdb",   -- darker overlay
    bg_float = "#fdfbf3",   -- floating window background

    -- FOREGROUND
    fg0      = "#1a1a1a",   -- base text
    fg1      = "#3a3a3a",   -- slightly muted
    fg2      = "#5a5a5a",   -- syntax soft
    fg3      = "#7a7a7a",   -- accent/lighter

    -- PRIMARY ACCENTS (Tropical Palette)
    red      = "#ee4b2b",   -- hibiscus red
    pink     = "#ff69b4",   -- tropical sunset pink
    magenta  = "#ff69b4",   -- vibrant magenta
    orange   = "#ff8c42",   -- mango orange
    yellow   = "#ffd700",   -- golden yellow
    green    = "#228b22",   -- palm leaf green
    teal     = "#008b8b",   -- ocean teal
    cyan     = "#20b2aa",   -- tropical cyan
    blue     = "#006994",   -- deep ocean blue
    purple   = "#da70d6",   -- bright purple
    violet   = "#9370db",   -- royal violet
    
    -- THEMED COLORS
    tropical_teal    = "#20b2aa",   -- tropical ocean teal
    mango_orange     = "#ff8c42",   -- mango orange
    hibiscus_red     = "#ee4b2b",   -- hibiscus red
    palm_green       = "#228b22",   -- palm leaf green
    sunset_pink      = "#ff69b4",   -- tropical sunset pink
    coconut_white    = "#fffdd0",   -- coconut white
    papaya_yellow    = "#ffefd5",   -- papaya yellow
    ocean_blue       = "#006994",   -- deep ocean blue
    coral_salmon     = "#fa8072",   -- coral salmon
    lime_green       = "#32cd32",   -- lime green

    -- Semi-transparent tropical colors for UI elements
    teal_10     = "#f7fdfc",  -- 10% teal on light bg
    orange_10   = "#fffaf8",  -- 10% orange on light bg
    pink_10     = "#fff9fb",  -- 10% pink on light bg
    green_10    = "#f7fcf8",  -- 10% green on light bg
    blue_10     = "#f7fbfd",  -- 10% blue on light bg
    yellow_10   = "#ffffef",  -- 10% yellow on light bg

    -- UI
    border = "#20b2aa",
    none   = "NONE",
}

-- Semantic color mappings for consistent theming across components
M.semantic = {
    -- Primary accent (main theme color)
    accent_primary   = M.palette.tropical_teal,
    accent_secondary = M.palette.mango_orange,
    
    -- Syntax highlighting
    keyword     = M.palette.hibiscus_red,
    function_   = M.palette.ocean_blue,
    string      = M.palette.palm_green,
    number      = M.palette.mango_orange,
    boolean     = M.palette.tropical_teal,
    constant    = M.palette.sunset_pink,
    comment     = M.palette.fg2,
    type        = M.palette.purple,
    operator    = M.palette.coral_salmon,
    
    -- UI elements
    selection   = M.palette.teal_10,
    search      = M.palette.yellow_10,
    match       = M.palette.pink_10,
    cursor      = M.palette.tropical_teal,
    
    -- Status and diagnostics
    info        = M.palette.ocean_blue,
    hint        = M.palette.tropical_teal,
    warning     = M.palette.mango_orange,
    error       = M.palette.hibiscus_red,
    
    -- Git and version control
    added       = M.palette.lime_green,
    modified    = M.palette.mango_orange,
    removed     = M.palette.hibiscus_red,
    
    -- Plugin specific
    border_accent       = M.palette.ocean_blue,
    prompt              = M.palette.sunset_pink,
    special             = M.palette.coral_salmon,
    floating_special    = M.palette.coral_salmon,
}

return M
