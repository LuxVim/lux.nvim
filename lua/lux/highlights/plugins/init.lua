local M         = {}

local plugins   = {
    "gitsigns",
    "telescope",
    "nvim-cmp",
    "whichkey",
    "nvimtree",
    "indent-blankline",
    "dashboard",
    "lazy",
    "flash",
    "mason",
    "noice",
    "mini",
    "leap",
    "notify",
    "luxline",
    "luxterm",
}

M.setup = function(colors, utils)
    for _, plugin in ipairs(plugins) do
        local ok, plugin_module = pcall(require, "lux.highlights.plugins." .. plugin)
        if ok and plugin_module.setup then
            plugin_module.setup(colors, utils)
        end
    end
end

return M
