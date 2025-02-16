return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      md = { "prettier" },
      xml = { "lemminx" },
    },
    -- formatters = {
    --   ["google-java-format"] = {
    --     prepend_args = { "--google" },
    --   },
    -- },
  },
}
