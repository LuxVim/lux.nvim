local M = {}

local default_config = {
    transparent     = false,
    dim_inactive    = false,
    variant         = "vesper",

    styles = {
        comments    = { italic  = true },
        keywords    = { bold    = true },
        functions   = { bold    = true },
    },
}

local config = default_config

M.setup = function(opts)
    config = vim.tbl_deep_extend("force", default_config, opts or {})
  
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
  
    vim.g.colors_name   = "lux-" .. config.variant
    vim.o.termguicolors = true
    local colors        = require("lux.colors")
    local utils         = require("lux.utils")
    
    colors.apply_variant(config.variant)
  
    if config.transparent then
        colors.palette.bg0      = "NONE"
        colors.palette.bg_float = "NONE"
    end
  
    require("lux.highlights").setup(colors, utils)
  
    utils.set_terminal_colors(colors.palette)
end

M.get_colors = function()
    return require("lux.colors").palette
end

M.get_config = function()
    return config
end
return M
