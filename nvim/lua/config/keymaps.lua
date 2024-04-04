-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { silent = true }

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "dbw", "vbd")
vim.keymap.set({ "n", "v" }, "<C-j>", "10j", opts)
vim.keymap.set({ "n", "v" }, "<C-k>", "10k", opts)
vim.keymap.set("n", "O", "O<esc>", opts)
