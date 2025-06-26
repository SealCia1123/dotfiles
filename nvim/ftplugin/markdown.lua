vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = { "*.md" },
    callback = function()
        vim.opt.textwidth = 100
        vim.opt.colorcolumn = "100"
    end,
})
require("markview").setup()
-- require("render-markdown").setup()
