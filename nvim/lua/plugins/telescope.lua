return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-frecency.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          fzf = {},
        },
      })
      require("telescope").load_extension("fzf")
      -- <leader>dn to jump to next diagnostics
      local set = vim.keymap.set
      set("n", "<leader>dn", require("telescope.builtin").diagnostics)
    end,
  },
}
