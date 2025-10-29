return {
    "neovim/nvim-lspconfig",
    opts = function()
        ---@class PluginLspOpts
        local ret = {
            -- options for vim.diagnostic.config()
            ---@type vim.diagnostic.Opts
            diagnostics = {
                underline = true,
                update_in_insert = false,
                -- virtual_text = {
                --     spacing = 4,
                --     source = "if_many",
                --     prefix = "●",
                -- },
                virtual_text = true,
                severity_sort = true,
                signs = {
                    text = {
                        [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
                        [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
                        [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
                        [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
                    },
                },
            },
            -- Enable this to enable the builtin LSP inlay hints on Neovim.
            -- Be aware that you also will need to properly configure your LSP server to
            -- provide the inlay hints.
            inlay_hints = {
                enabled = true,
                exclude = { "vue", "python" }, -- filetypes for which you don't want to enable inlay hints
            },
            -- Enable this to enable the builtin LSP code lenses on Neovim.
            -- Be aware that you also will need to properly configure your LSP server to
            -- provide the code lenses.
            codelens = {
                enabled = false,
            },
            -- Enable this to enable the builtin LSP folding on Neovim.
            -- Be aware that you also will need to properly configure your LSP server to
            -- provide the folds.
            folds = {
                enabled = true,
            },
            format = {
                formatting_options = nil,
                timeout_ms = nil,
            },
            -- LSP Server Settings
            ---@type table<string, vim.lsp.Config|{mason?:boolean, enabled?:boolean}|boolean>
            servers = {
                -- configuration for all lsp servers
                ["*"] = {
                    keys = {
                        { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", has = "codeAction" },
                    },
                    capabilities = {
                        workspace = {
                            fileOperations = {
                                didRename = true,
                                willRename = true,
                            },
                        },
                    },
                },
                yamlls = { mason = true },
                ruff = { mason = true },
                ts_ls = { mason = true },
                basedpyright = { mason = true },
                emmet_ls = { mason = true },
                lemminx = { mason = true },
                hyprls = { mason = true },
                clangd = { mason = true },
                clang_format = { mason = true },
                docker_compose_language_servic = { mason = true },
                docker_language_server = { mason = true },
                dockerls = { mason = true },
                stylelint = { mason = true },
                cssls = { mason = true },
                google_java_format = { mason = true },
                prettier = { mason = true },
                shellcheck = { mason = true },
                shfmt = { mason = true },
                stylua = { mason = true },
                tailwindcss_language_server = { mason = true },
                tombi = { mason = true },
                tree_sitter_cli = { mason = true },
                yaml_language_server = { mason = true },
                vscode_spring_boot_tools = { mason = true },
                lua_ls = {
                    -- mason = false, -- set to false if you don't want this server to be installed with mason
                    -- Use this to add any additional keymaps
                    -- for specific lsp servers
                    -- ---@type LazyKeysSpec[]
                    -- keys = {},
                    settings = {
                        Lua = {
                            workspace = {
                                checkThirdParty = false,
                            },
                            codeLens = {
                                enable = true,
                            },
                            completion = {
                                callSnippet = "Replace",
                            },
                            doc = {
                                privateName = { "^_" },
                            },
                            hint = {
                                enable = true,
                                setType = false,
                                paramType = true,
                                paramName = "Disable",
                                semicolon = "Disable",
                                arrayIndex = "Disable",
                            },
                        },
                    },
                },
            },
            -- you can do any additional lsp server setup here
            -- return true if you don't want this server to be setup with lspconfig
            ---@type table<string, fun(server:string, opts: vim.lsp.Config):boolean?>
            setup = {
                -- example to setup with typescript.nvim
                -- tsserver = function(_, opts)
                --   require("typescript").setup({ server = opts })
                --   return true
                -- end,
                -- Specify * to use this function as a fallback for any server
                -- ["*"] = function(server, opts) end,
            },
        }
        return ret
    end,
}
