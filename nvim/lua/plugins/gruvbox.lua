return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            terminal_colors = false,
            undercurl = false,
            underline = false,
            bold = true,
            italic = {
                strings = true,
                emphasis = false,
                comments = true,
                operators = false,
                folds = false,
            },
            strikethrough = false,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = false, -- invert background for search, diffs, statuslines and errors
            contrast = "hard", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
        })
    end,
}
