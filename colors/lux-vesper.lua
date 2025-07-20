if vim.g.colors_name then
    vim.cmd("highlight clear")
end

vim.g.colors_name   = "lux-vesper"
vim.o.termguicolors = true

require("lux").setup({ variant = "vesper" })