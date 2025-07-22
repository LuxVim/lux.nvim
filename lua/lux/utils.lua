-- Utility functions for highlight management and terminal color setup
local M = {}

-- Set highlight group with given options
-- @param group string: Highlight group name
-- @param opts table: Highlight options (fg, bg, bold, italic, etc.)
M.highlight = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- Apply multiple highlight groups at once
-- @param groups table: Table of highlight group names to options
M.highlight_all = function(groups)
    for group, opts in pairs(groups) do
        M.highlight(group, opts)
    end
end

-- Configure terminal colors to match theme palette
-- @param colors table: Color palette with terminal color mappings
M.set_terminal_colors = function(colors)
    vim.g.terminal_color_0  = colors.bg0
    vim.g.terminal_color_1  = colors.red
    vim.g.terminal_color_2  = colors.green
    vim.g.terminal_color_3  = colors.yellow
    vim.g.terminal_color_4  = colors.blue
    vim.g.terminal_color_5  = colors.magenta
    vim.g.terminal_color_6  = colors.cyan
    vim.g.terminal_color_7  = colors.fg0
    vim.g.terminal_color_8  = colors.fg2
    vim.g.terminal_color_9  = colors.red
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.magenta
    vim.g.terminal_color_14 = colors.cyan
    vim.g.terminal_color_15 = colors.fg0
end
return M
