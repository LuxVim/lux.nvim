local M = {}

M.setup = function(colors, utils)
    require("lux.highlights.editor").setup(colors, utils)
    require("lux.highlights.syntax").setup(colors, utils)
    require("lux.highlights.treesitter").setup(colors, utils)
    require("lux.highlights.lsp").setup(colors, utils)
    require("lux.highlights.plugins").setup(colors, utils)
end
return M
