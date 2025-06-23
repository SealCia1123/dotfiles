return {
    -- iceclimber, gyokuro, hojicha, roseprime
    {
        "cdmill/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                -- optional configuration here
            })
            require("neomodern").load()
        end,
    },

    {
        "webhooked/kanso.nvim",
        lazy = false,
        priority = 1000,
    },
}
