return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      sql = { "sql_formatter" },
      mysql = { "sql_formatter" },
    },
    formatters = {
      ["sql-formatter"] = {
        command = "sql-formatter",
        args = { "--keyword-case", "upper" },
      },
    },
  },
}
