local opts = { silent = true }
local set = vim.keymap.set

-- rename keymap
set("n", "<leader>rn", ":IncRename ")
-- jump between buffers
set("n", "<c-j>", "<c-w><c-j>")
-- set("n", "<leader>ff", ":FzfLua files<CR>", opts)
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
-- set("n", "<c-u>", "<c-u>zz")
-- set("n", "<c-d>", "<c-d>zz")

-- keymap for cmd mode
set("c", "<C-h>", "<BS>")
set("c", "<C-f>", "<right>")
set("c", "<C-b>", "<left>")
set("c", "<C-a>", "<home>")
set("c", "<C-e>", "<end>")

-- resize splits
set("n", "<M-.>", "<c-w>5<")
set("n", "<M-,>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- for terminal mode
vim.api.nvim_set_keymap("t", "<esc>", "<C-\\><C-n>", { noremap = true })
set("n", "<leader>n", ":vertical terminal<cr>", opts)
set("n", "Y", "y$")
set("n", "dbw", "vbd")
set("n", "O", "O<esc>", opts)
set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
set("v", "<leader>p", "_dP'")
