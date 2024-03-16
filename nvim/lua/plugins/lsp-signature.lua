return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
        local cfg = {
            on_attach = function(client, bufnr)
                require("lsp_signature").on_attach(signature_setup, bufnr) -- Note: add in lsp client on-attach
            end,
        }
        -- require("lsp_signature").setup(cfg)
        -- require("lsp_signature").on_attach(cfg, bufnr)
        -- require("lsp_signature").setup(opts)
    end,
}
