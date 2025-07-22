if vim.g.colors_name then
    vim.cmd("highlight clear")
end

vim.g.colors_name   = "lux-aurora"
vim.o.termguicolors = true

require("lux").setup({ variant = "aurora" })