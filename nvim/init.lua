require("config.lazy")

vim.cmd.colorscheme("vague")
require("oil").setup()
-- require("harpoon")
require("treesitter-context").setup()

require("el").setup({})
