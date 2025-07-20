local M = {}

local vesper = require("lux.colors.vesper")
local prism = require("lux.colors.prism")

M.palette = vim.deepcopy(vesper.palette)

M.apply_variant = function(variant)
    if variant == "prism" then
        M.palette = vim.deepcopy(prism.palette)
    else
        M.palette = vim.deepcopy(vesper.palette)
    end
end

return M
