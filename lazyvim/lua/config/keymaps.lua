local opts = { silent = true }
local set = vim.keymap.set

-- rename keymap
set("n", "<leader>rn", ":IncRename ")
-- jump between buffers
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
-- resize splits
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")
-- for terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
set("n", "<leader>n", ":vertical terminal<cr>", opts)

set("n", "Y", "y$")
set("n", "dbw", "vbd")
set("n", "O", "O<esc>", opts)
set("v", "<leader>p", "_dP'")
