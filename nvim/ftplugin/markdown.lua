vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = { "*.md" },
    callback = function()
        vim.opt.textwidth = 100
        vim.opt.colorcolumn = "100"
        vim.opt.wrap = false
        vim.opt.expandtab = true
        vim.keymap.set("n", "<leader>mv", ":Markview<CR>", { desc = "Toggle Markview plugin" })
    end,
})
require("markview").setup()
