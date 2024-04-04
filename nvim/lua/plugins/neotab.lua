return {
    "kawre/neotab.nvim",
    event = "InsertEnter",
    opts = {
        {
            tabkey = "",
            act_as_tab = true,
            behavior = "nested", ---@type ntab.behavior
            pairs = { ---@type ntab.pair[]
                { open = "(", close = ")" },
                { open = "[", close = "]" },
                { open = "{", close = "}" },
                { open = "'", close = "'" },
                { open = '"', close = '"' },
                { open = "`", close = "`" },
                { open = "<", close = ">" },
            },
            exclude = {},
            smart_punctuators = {
                enabled = true,
                semicolon = {
                    enabled = true,
                    ft = { "cs", "c", "cpp", "java" },
                },
                escape = {
                    enabled = true,
                    triggers = { ---@type table<string, ntab.trigger>
                        ["+"] = {
                            pairs = {
                                { open = '"', close = '"' },
                            },
                            -- string.format(format, typed_char)
                            format = " %s ", -- " + "
                            ft = { "java" },
                        },
                        [","] = {
                            pairs = {
                                { open = "'", close = "'" },
                                { open = '"', close = '"' },
                            },
                            format = "%s ", -- ", "
                        },
                        ["="] = {
                            pairs = {
                                { open = "(", close = ")" },
                            },
                            ft = { "javascript", "typescript" },
                            format = " %s> ", -- ` => `
                            -- string.match(text_between_pairs, cond)
                            cond = "^$", -- match only pairs with empty content
                        },
                    },
                },
            },
        },
    },
}
