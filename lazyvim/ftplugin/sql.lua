local set = vim.keymap.set
set("n", ":w<CR>", ":lua vim.lsp.buf.format()<CR>")
