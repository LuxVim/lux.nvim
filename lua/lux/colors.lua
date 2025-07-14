local M = {}

M.palette = {
    -- BACKGROUND
    bg0      = "#0f0f23",   -- deep space
    bg1      = "#1a1a2e",   -- outer layer
    bg2      = "#16213e",   -- inner layer
    bg3      = "#1f2937",   -- soft slate shadow
    bg4      = "#2A305E",   -- dim depth
    bg_dark  = "#0f0f23",
    bg_float = "#1a1a2e",

    -- FOREGROUND
    fg0      = "#ffffff",   -- base white
    fg1      = "#e0e7ff",   -- pale indigo
    fg2      = "#c7d2fe",   -- soft lilac
    fg3      = "#a5b4fc",   -- faded lavender

    -- PRIMARY ACCENTS (warm + vibrant)
    purple   = "#a855f7",   -- main accent purple
    indigo   = "#8b5cf6",   -- deep indigo
    grape    = "#7c3aed",   -- Tailwind grape
    pink     = "#ec4899",   -- vibrant pink
    magenta  = "#be185d",   -- rich magenta
    red      = "#F7768E",   -- soft crimson-pink
    coral    = "#FF9E64",   -- warm coral
    orange   = "#FFB86C",   -- highlight orange
    gold     = "#E0AF68",   -- light gold
    flamengo = "#f6339a",
    -- COOL ACCENTS (muted/soft only)
    blue     = "#3b82f6",   -- Tailwind blue (for rare highlights)
    cyan     = "#70cfc4",   -- soft aqua
    teal     = "#4daaa0",   -- faded teal
    violet   = "#9D7CD8",   -- gentle contrast
    aqua     = "#86c9bc",   -- optional UI tint

    -- RGBA / Transparency Inspired
    purple_10 = "rgba(168, 85, 247, 0.1)",
    purple_20 = "rgba(168, 85, 247, 0.2)",
    purple_30 = "rgba(168, 85, 247, 0.3)",
    purple_50 = "rgba(168, 85, 247, 0.5)",

    -- UI
    border   = "#2A305E",
    none     = "NONE",
}

return M
