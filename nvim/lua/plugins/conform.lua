return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            java = { "google-java-format" },
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
