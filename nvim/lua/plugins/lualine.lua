return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
        return {
            require("lualine").setup({
                options = {
                    icons_enabled = false,
                    component_separators = { left = "", right = "│" },
                    section_separators = { left = "", right = "" },
                    always_divide_middle = true,
                    always_show_tabline = true,
                    theme = "seoul256",
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff" },
                    lualine_c = { "filename", "diagnostics" },
                    lualine_x = { "encoding", "filetype" },
                    lualine_y = {},
                    lualine_z = { "location" },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = { "location" },
                    lualine_y = {},
                    lualine_z = {},
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {},
            }),
        }
    end,
}
