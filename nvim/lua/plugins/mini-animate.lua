return {
    "echasnovski/mini.animate",
    -- version = "*",
    version = false,
    opt = function(_, opts)
        opts.scroll = {
            enable = true,
        }
        opts.cursor = {
            enable = true,
            timing = 100,
        }
    end,
}
