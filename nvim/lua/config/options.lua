-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local space = "·"
vim.opt.listchars:append({
    tab = "  ",
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
})
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.o.encoding = "utf-8"

vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.termguicolors = true
vim.opt.relativenumber = false
