return {
    -- VAGUE
    {
        "vague2k/vague.nvim",
        config = function()
            require("vague").setup({
                transparent = false, -- don't set background
                style = {
                    -- "none" is the same thing as default. But "italic" and "bold" are also valid options
                    boolean = "none",
                    number = "none",
                    float = "none",
                    error = "none",
                    comments = "none",
                    conditionals = "none",
                    functions = "none",
                    headings = "bold",
                    operators = "none",
                    strings = "none",
                    variables = "none",

                    -- keywords
                    keywords = "none",
                    keyword_return = "none",
                    keywords_loop = "none",
                    keywords_label = "none",
                    keywords_exception = "none",

                    -- builtin
                    builtin_constants = "none",
                    builtin_functions = "none",
                    builtin_types = "none",
                    builtin_variables = "none",
                },
                -- Override colors
                colors = {
                    bg = "#0e0e0e",
                    -- fg = "#cdcdcd",
                    -- floatBorder = "#878787",
                    -- line = "#282830",
                    -- comment = "#646477",
                    -- builtin = "#bad1ce",
                    -- func = "#be8c8c",
                    -- string = "#deb896",
                    -- number = "#d2a374",
                    -- property = "#c7c7d4",
                    -- constant = "#b4b4ce",
                    -- parameter = "#b9a3ba",
                    -- visual = "#363738",
                    -- error = "#d2788c",
                    -- warning = "#e6be8c",
                    -- hint = "#8ca0dc",
                    -- operator = "#96a3b2",
                    -- keyword = "#7894ab",
                    -- type = "#a1b3b9",
                    -- search = "#465362",
                    -- plus = "#8faf77",
                    -- delta = "#e6be8c",
                },
            })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = true, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = {}, -- Change the style of comments
                    conditionals = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })
        end,
    },
    {
        "webhooked/kanso.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanso").setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = false },
                functionStyle = {},
                keywordStyle = { italic = false },
                statementStyle = {},
                typeStyle = {},
                disableItalics = false,
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = { zen = {}, pearl = {}, ink = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "zen", -- Load "zen" theme
                background = { -- map the value of 'background' option to a theme
                    dark = "ink", -- try "ink" !
                    light = "pearl",
                },
            })
        end,
    },
}
