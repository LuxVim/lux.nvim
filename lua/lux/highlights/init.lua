-- Main highlights initialization module
-- Coordinates setup of all highlight groups for the lux theme
local M = {}

-- Sets up all highlight groups by calling individual highlight modules
-- This function orchestrates the complete highlighting setup process
-- @param colors table: Color palette and semantic color mappings
-- @param utils table: Utility functions including highlight_all
M.setup = function(colors, utils)
    require("lux.highlights.editor").setup(colors, utils)      -- Editor UI highlights
    require("lux.highlights.syntax").setup(colors, utils)      -- Traditional syntax highlighting
    require("lux.highlights.treesitter").setup(colors, utils)  -- Treesitter-based highlighting
    require("lux.highlights.lsp").setup(colors, utils)         -- LSP and diagnostic highlights
    require("lux.highlights.plugins").setup(colors, utils)     -- Plugin-specific highlights
end

return M
