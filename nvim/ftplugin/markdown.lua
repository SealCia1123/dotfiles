vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = { "*.md" },
    callback = function()
        vim.opt.textwidth = 150
    end,
})

require("render-markdown").setup()
