local opts = { silent = true }
local set = vim.keymap.set

-- rename keymap
set("n", "<leader>rn", ":IncRename ")
set("v", "<C-a>", "ggVG", { desc = "Select [a]ll" })
-- jump between buffers
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
-- set("n", "<c-u>", "<c-u>zz")
-- set("n", "<c-d>", "<c-d>zz")

-- jump to next diagnostics
set("n", "<leader>nd", require("snacks.picker").diagnostics, { desc = "Jump to [n]ext [d]iagnostics" })

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
set("n", "<leader>nt", ":vertical terminal<cr>", { silent = true, desc = "[n]ew vertical [t]erminal" })

set("n", "Y", "y$")
set("n", "dbw", "vbd")
set("n", "O", "O<esc>", opts)
set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
set("v", "<leader>p", "_dP'", { desc = "[p]aste without override register" })

set("n", "<M-h>", ":bprevious<CR>", { desc = "Switch to previous buffer" })
set("n", "<M-l>", ":bnext<CR>", { desc = "Switch to next buffer" })
