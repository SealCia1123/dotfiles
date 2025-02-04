local set = vim.keymap.set
set("n", "<C-s>", ":lua vim.lsp.buf.format()<CR>")
