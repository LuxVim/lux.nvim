local M = {}

-- Vesper color variant - Dark theme with rich purple accents

M.palette = {
    -- BACKGROUND (dark theme)
    bg0      = "#0f0f23",   -- base background
    bg1      = "#1a1a2e",   -- slightly lighter
    bg2      = "#16213e",   -- highlight base
    bg3      = "#1f2937",   -- selection background
    bg4      = "#2A305E",   -- upper background depth
    bg_dark  = "#0f0f23",
    bg_float = "#1a1a2e",

    -- FOREGROUND
    fg0      = "#ffffff",   -- base text
    fg1      = "#e0e7ff",   -- slightly muted
    fg2      = "#c7d2fe",   -- syntax soft
    fg3      = "#a5b4fc",   -- accent/lighter 

    -- PRIMARY ACCENTS 
    purple   = "#a855f7",   -- vibrant purple
    indigo   = "#8b5cf6",   -- deep indigo
    grape    = "#7c3aed",   -- royal grape
    pink     = "#ec4899",   -- bright pink
    magenta  = "#be185d",   -- deep magenta
    red      = "#F7768E",   -- soft red
    coral    = "#FF9E64",   -- warm coral
    orange   = "#FFB86C",   -- bright orange
    gold     = "#E0AF68",   -- warm gold
    flamengo = "#f6339a",   -- vibrant flamengo
    -- COOL ACCENTS
    blue     = "#3b82f6",   -- sky blue
    cyan     = "#70cfc4",   -- soft cyan
    teal     = "#4daaa0",   -- ocean teal
    violet   = "#9D7CD8",   -- muted violet
    aqua     = "#86c9bc",   -- gentle aqua
    green    = "#7ed321",   -- vibrant green
    yellow   = "#E0AF68",   -- warm yellow 

    -- Semi-transparent purple colors (converted from RGBA)
    purple_10 = "#1a1940",  -- 10% purple on dark bg
    purple_20 = "#251f4d",  -- 20% purple on dark bg
    purple_30 = "#31255a",  -- 30% purple on dark bg
    purple_50 = "#4a3674",  -- 50% purple on dark bg

    -- UI
    border   = "#2A305E",
    none     = "NONE",
}

-- Semantic color mappings for consistent theming across components
M.semantic = {
    -- Primary accent (main theme color)
    accent_primary   = M.palette.purple,
    accent_secondary = M.palette.indigo,
    
    -- Syntax highlighting
    keyword     = M.palette.grape,
    function_   = M.palette.flamengo,
    string      = M.palette.gold,
    number      = M.palette.red,
    boolean     = M.palette.orange,
    constant    = M.palette.pink,
    comment     = M.palette.fg2,
    type        = M.palette.teal,
    operator    = M.palette.coral,
    
    -- UI elements
    selection   = M.palette.bg3,
    search      = M.palette.teal,
    match       = M.palette.orange,
    cursor      = M.palette.orange,
    
    -- Status and diagnostics
    info        = M.palette.blue,
    hint        = M.palette.cyan,
    warning     = M.palette.gold,
    error       = M.palette.red,
    
    -- Git and version control
    added       = M.palette.green,
    modified    = M.palette.yellow,
    removed     = M.palette.red,
    
    -- Plugin specific
    border_accent       = M.palette.gold,
    prompt              = M.palette.pink,
    special             = M.palette.blue,
    floating_special    = M.palette.indigo,
}

return M
