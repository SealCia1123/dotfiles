return {
    "navarasu/onedark.nvim",
    config = function()
        -- Lua
        require("onedark").setup({
            style = "warmer",
            transparent = false,
            term_colors = true,
            ending_tildes = false,
            cmp_itemkind_reverse = false,
            toggle_style_key = nil,
            toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
            code_style = {
                comments = "italic",
                keywords = "bold",
                functions = "bold",
                strings = "italic",
                variables = "none",
            },
            lualine = {
                transparent = false,
            },
            colors = {},
            highlights = {},
            diagnostics = {
                darker = true,
                undercurl = true,
                background = false,
            },
        })
    end,
}
