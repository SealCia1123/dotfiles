return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            java = { "clang-format", "google-java-format" },
            -- md = { "prettier" },
            xml = { "lemminx" },
            html = { "prettier" },
            js = { "prettier" },
            ts = { "prettier" },
        },
        formatters = {
            ["google-java-format"] = {
                prepend_args = { "--aosp" },
            },
        },
    },
}
