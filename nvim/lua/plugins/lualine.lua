return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
        return {
            require("lualine").setup({
                options = {
                    theme = "iceberg_dark",
                    icons_enabled = false,
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                    always_divide_middle = true,
                    always_show_tabline = true,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff" },
                    lualine_c = { "filename", "diagnostics" },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = {},
                    lualine_z = { "location" },
                },
            }),
        }
    end,
}
