return {
    "folke/noice.nvim",
    opts = {
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
            signature = {
                enabled = true,
                auto_open = {
                    enabled = true,
                    trigger = true, -- Automatically show signature help when typing a trigger character from the LSP
                    luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes
                    throttle = 50, -- Debounce lsp signature help request by 50ms
                },
                view = nil, -- when nil, use defaults from documentation
                opts = {
                    size = {
                        min_width = 0,
                        min_height = 0,
                        width = "auto",
                        height = "auto",
                        max_height = 7,
                        max_width = 40,
                    },
                }, -- merged with defaults from documentation
            },
        },
        routes = {
            {
                filter = {
                    event = "lsp",
                    kind = "progress",
                    cond = function(message)
                        local client = vim.tbl_get(message.opts, "progress", "client")
                        if client ~= "jdtls" then
                            return false
                        end

                        local content = vim.tbl_get(message.opts, "progress", "message")
                        if content == nil then
                            return false
                        end

                        return string.find(content, "Validate")
                            or string.find(content, "Publish")
                            or string.find(content, "Look")
                            or string.find(content, "Build")
                            or string.find(content, "Refresh")
                    end,
                },
                view = "mini",
                opts = { skip = true },
            },
        },
    },
}
