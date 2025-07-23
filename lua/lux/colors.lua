local M = {}

-- Dynamic theme loading
local themes = {
    vesper = require("lux.colors.vesper"),
    umbra = require("lux.colors.umbra"),
    aurora = require("lux.colors.aurora"),
    eos = require("lux.colors.eos"),
    chroma = require("lux.colors.chroma"),
}

-- Default to vesper variant
M.palette = vim.deepcopy(themes.vesper.palette)
M.semantic = vim.deepcopy(themes.vesper.semantic)

-- Apply a specific color variant
-- @param variant string: theme variant name
M.apply_variant = function(variant)
    local theme = themes[variant] or themes.vesper
    M.palette = vim.deepcopy(theme.palette)
    M.semantic = vim.deepcopy(theme.semantic)
end

return M
