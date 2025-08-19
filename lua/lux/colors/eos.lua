local M = {}

-- Eos color variant - Light theme with warm dawn tones

M.palette = {
    -- BACKGROUND (light theme)
    -- bg0      = "#fff9f7",   -- base background
    bg0      = "#fadfd9",   -- darker overlay
    bg1      = "#fef4f1",   -- slightly darker
    bg2      = "#fdefeb",   -- highlight base
    bg3      = "#fce9e5",   -- selection background
    bg4      = "#fbe4df",   -- upper background depth
    bg_dark  = "#fadfd9",   -- darker overlay
    bg_float = "#fef4f1",   -- floating window background

    -- FOREGROUND
    fg0      = "#1a1a1a",   -- base text
    fg1      = "#3a3a3a",   -- slightly muted
    fg2      = "#5a5a5a",   -- syntax soft
    fg3      = "#7a7a7a",   -- accent/lighter

    -- PRIMARY ACCENTS 
    red      = "#ff6b6b",   -- vibrant red
    coral_red = "#ff6b6b",   -- living coral
    coral_orange = "#ff8e53", -- coral orange
    coral_pink = "#ff8a95",  -- coral pink
    coral_salmon = "#fa8072", -- salmon coral
    coral_peach = "#ffab91",  -- peachy coral
    pink     = "#ff8a95",   -- bright pink
    magenta  = "#ff6b9d",   -- deep magenta
    orange   = "#ff8e53",   -- warm orange
    yellow   = "#ffd93d",   -- sunset yellow
    purple   = "#a855f7",   -- vibrant purple
    violet   = "#9c27b0",   -- royal violet
    
    -- COOL ACCENTS
    blue     = "#42a5f5",   -- sky blue
    cyan     = "#26d0ce",   -- bright cyan
    teal     = "#00a693",   -- ocean teal
    reef_turquoise = "#26d0ce", -- reef turquoise
    reef_teal = "#00a693",  -- deep reef teal
    green    = "#20bf55",   -- vibrant green
    sea_green = "#20bf55",  -- sea anemone green
    purple_sea = "#a855f7", -- purple sea urchin

    -- Semi-transparent dawn colors for UI elements
    coral_10  = "#fff9f8",  -- 10% coral on light bg
    coral_20  = "#fef0ed",  -- 20% coral on light bg
    pink_10   = "#fff8f9",  -- 10% pink on light bg
    pink_20   = "#feeff1",  -- 20% pink on light bg
    orange_10 = "#fffaf8",  -- 10% orange on light bg
    teal_10   = "#f7fefe",  -- 10% teal on light bg

    -- UI
    border = "#ff8e53",
    none   = "NONE",
}

-- Semantic color mappings for consistent theming across components
M.semantic = {
    -- Primary accent (main theme color)
    accent_primary   = M.palette.coral_orange,
    accent_secondary = M.palette.reef_turquoise,
    
    -- Syntax highlighting
    keyword     = M.palette.coral_red,
    function_   = M.palette.reef_teal,
    string      = M.palette.sea_green,
    number      = M.palette.yellow,
    boolean     = M.palette.reef_turquoise,
    constant    = M.palette.coral_pink,
    comment     = M.palette.fg2,
    type        = M.palette.purple_sea,
    operator    = M.palette.coral_salmon,
    
    -- UI elements
    selection   = M.palette.coral_20,
    search      = M.palette.teal_10,
    match       = M.palette.pink_20,
    cursor      = M.palette.coral_orange,
    
    -- Status and diagnostics
    info        = M.palette.reef_turquoise,
    hint        = M.palette.reef_teal,
    warning     = M.palette.yellow,
    error       = M.palette.coral_red,
    
    -- Git and version control
    added       = M.palette.sea_green,
    modified    = M.palette.coral_peach,
    removed     = M.palette.coral_red,
    
    -- Plugin specific
    border_accent       = M.palette.coral_salmon,
    prompt              = M.palette.coral_pink,
    special             = M.palette.purple_sea,
    floating_special    = M.palette.coral_pink,
}

return M
