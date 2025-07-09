vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = { "*.md" },
    callback = function()
        vim.opt.textwidth = 100
        vim.opt.colorcolumn = "100"
        vim.opt.wrap = true
        vim.opt.expandtab = true
        vim.keymap.set("n", "<leader>mv", ":RenderMarkdown toggle<CR>", { desc = "Toggle RenderMarkdown plugin" })
    end,
})
require("render-markdown").setup()
require("vague").setup({
    style = {},
})
