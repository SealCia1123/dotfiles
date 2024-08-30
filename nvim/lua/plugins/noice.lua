return {
    "folke/noice.nvim",
    opts = function(_, opts)
        opts.lsp.signature = {
            opts = {
                size = { min_width = 0, min_height = 0, max_height = 7, max_width = 50, left = 50 },
            },
        }
    end,
}
