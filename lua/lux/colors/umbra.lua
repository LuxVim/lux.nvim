local M = {}

-- Umbra color variant - Dark theme with mystical purple shadows

M.palette = {
    -- BACKGROUND
    bg0      = "#0a0310",   -- darker overlay
    bg1      = "#180c24",   -- slightly lighter
    bg2      = "#221232",   -- highlight base
    bg3      = "#2c1a42",   -- selection background
    bg4      = "#3a2559",   -- upper background depth
    bg_dark  = "#0a0310",   -- darker overlay
    bg_float = "#180c24",   -- floating window background

    -- FOREGROUND
    fg0      = "#f4edff",   -- base text
    fg1      = "#dbcdf0",   -- slightly muted
    fg2      = "#bda1e5",   -- syntax soft
    fg3      = "#a574dd",   -- accent/lighter

    -- PRIMARY ACCENTS
    purple   = "#6b60e3",   -- imperial purple
    magenta  = "#c471ed",   -- glam magenta
    violet   = "#d776dd",   -- orchid purple
    fuchsia  = "#b85ee0",   -- velvet fuchsia
    pink     = "#da69e8",   -- electric pink
    blue     = "#0056cc",   -- lucid blue
    cyan     = "#00ffd2",   -- void mint
    green    = "#10b981",   -- arcane green
    teal     = "#34d399",   -- alchemy glow
    yellow   = "#facc15",   -- pale gold
    red      = "#c471ed",   -- using magenta for red
    
    -- THEMED COLORS
    orchid_purple   = "#d776dd",   -- soft purple-pink
    imperial_purple = "#6b60e3",   -- bluish violet
    mystic_mauve    = "#d776dd",   -- mystical mauve
    glam_magenta    = "#c471ed",   -- vivid magenta accent
    velvet_fuchsia  = "#b85ee0",   -- jewel tone fuchsia
    electric_pink   = "#da69e8",   -- electric pink highlight
    lucid_blue      = "#0056cc",   -- bold cobalt blue
    dream_blue      = "#0056cc",   -- deep cool blue
    space_blue      = "#0056cc",   -- dark space blue
    crystal_ice     = "#6b60e3",   -- crystal ice blue
    arcane_green    = "#10b981",   -- vivid emerald
    void_mint       = "#00ffd2",   -- neon mint
    alchemy_glow    = "#34d399",   -- vibrant jade
    lemon_light     = "#fef08a",   -- light lemon yellow

    -- Semi-transparent purple colors for UI elements
    purple_10 = "#291144",  -- 10% purple on dark bg
    purple_20 = "#361a5b",  -- 20% purple on dark bg
    purple_30 = "#45226f",  -- 30% purple on dark bg
    purple_50 = "#5b3094",  -- 50% purple on dark bg

    -- UI
    border = "#6b60e3",
    none   = "NONE",
}

-- Semantic color mappings for consistent theming across components
M.semantic = {
    -- Primary accent (main theme color)
    accent_primary   = M.palette.purple,
    accent_secondary = M.palette.magenta,
    
    -- Syntax highlighting
    keyword     = M.palette.magenta,
    function_   = M.palette.blue,
    string      = M.palette.teal,
    number      = M.palette.green,
    boolean     = M.palette.cyan,
    constant    = M.palette.pink,
    comment     = M.palette.fg2,
    type        = M.palette.violet,
    operator    = M.palette.fuchsia,
    
    -- UI elements
    selection   = M.palette.purple_20,
    search      = M.palette.lemon_light,
    match       = M.palette.yellow,
    cursor      = M.palette.magenta,
    
    -- Status and diagnostics
    info        = M.palette.blue,
    hint        = M.palette.teal,
    warning     = M.palette.yellow,
    error       = M.palette.magenta,
    
    -- Git and version control
    added       = M.palette.green,
    modified    = M.palette.yellow,
    removed     = M.palette.magenta,
    
    -- Plugin specific
    border_accent = M.palette.violet,
    prompt        = M.palette.mystic_mauve,
    special       = M.palette.pink,
}

return M
