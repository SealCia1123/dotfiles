return {
    -- CATPPUCCIN
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
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
                no_italic = false, -- Force no italic
                no_bold = true, -- Force no bold
                no_underline = false, -- Force no underline
                styles = {
                    comments = {},
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
                color_overrides = {
                    mocha = {
                        rosewater = "#ffc0b9",
                        flamingo = "#f5aba3",
                        pink = "#f592d6",
                        mauve = "#c0afff",
                        red = "#ea746c",
                        maroon = "#ff8595",
                        peach = "#fa9a6d",
                        yellow = "#ffe081",
                        green = "#99d783",
                        teal = "#47deb4",
                        sky = "#00d5ed",
                        sapphire = "#00dfce",
                        blue = "#00baee",
                        lavender = "#abbff3",
                        text = "#cccccc",
                        subtext1 = "#bbbbbb",
                        subtext0 = "#aaaaaa",
                        overlay2 = "#999999",
                        overlay1 = "#888888",
                        overlay0 = "#777777",
                        surface2 = "#666666",
                        surface1 = "#555555",
                        surface0 = "#444444",
                        base = "#202020",
                        mantle = "#222222",
                        crust = "#333333",
                    },
                },
                custom_highlights = {},
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
                },
            })
        end,
    },

    -- Kanagawa
    {
        "rebelot/kanagawa.nvim",
        config = function()
            -- Default options:
            require("kanagawa").setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = false },
                statementStyle = { bold = false },
                typeStyle = {},
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {
                        -- change all usages of these colors
                        -- dragonBlack0 = "#0d0c0c",
                        -- dragonBlack1 = "#12120f",
                        -- dragonBlack2 = "#1D1C19",
                        -- dragonBlack3 = "#111111",
                        -- dragonBlack4 = "#141414",
                        -- dragonBlack5 = "#393836",
                        -- dragonBlack6 = "#625e5a",
                    },
                    theme = {},
                },
                overrides = function(colors) -- add/modify highlights
                    local theme = colors.theme
                    return {
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },
                        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                        PmenuSbar = { bg = theme.ui.bg_m1 },
                        PmenuThumb = { bg = theme.ui.bg_p2 },
                        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
                        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        TelescopeTitle = { fg = theme.ui.special, bold = true },
                        TelescopePromptNormal = { bg = theme.ui.bg_p1 },
                        TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                        TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                        TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                        TelescopePreviewNormal = { bg = theme.ui.bg_dim },
                        TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
                    }
                end,
                theme = "wave", -- Load "wave" theme when 'background' option is not set
                background = { -- map the value of 'background' option to a theme
                    dark = "dragon", -- try "dragon" !
                    light = "lotus",
                },
            })
        end,
    },
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
                    -- bg = "#1c1f20",
                    bg = "#0e0e0e",
                    fg = "#cdcdcd",
                    floatBorder = "#878787",
                    line = "#282830",
                    comment = "#646477",
                    builtin = "#bad1ce",
                    func = "#be8c8c",
                    string = "#deb896",
                    number = "#d2a374",
                    property = "#c7c7d4",
                    constant = "#b4b4ce",
                    parameter = "#b9a3ba",
                    visual = "#363738",
                    error = "#d2788c",
                    warning = "#e6be8c",
                    hint = "#8ca0dc",
                    operator = "#96a3b2",
                    keyword = "#7894ab",
                    type = "#a1b3b9",
                    search = "#465362",
                    plus = "#8faf77",
                    delta = "#e6be8c",
                },
            })
        end,
    },
}
