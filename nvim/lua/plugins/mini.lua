return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        local statusline = require("mini.statusline")
        statusline.setup({
            -- Content of statusline as functions which return statusline string. See
            -- `:h statusline` and code of default contents (used instead of `nil`).
            content = {
                active = nil,
                inactive = nil,
            },
            use_icons = false,
            set_vim_settings = true,
        })
        ---@diagnostic disable-next-line
        statusline.section_location = function()
            return "%l:%-v"
        end
    end,
}
