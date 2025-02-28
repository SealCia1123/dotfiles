return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    local statusline = require("mini.statusline")
    statusline.setup({
      -- Content of statusline as functions which return statusline string. See
      -- `:h statusline` and code of default contents (used instead of `nil`).
      content = {
        active = nil,
        inactive = nil,
      },
      use_icons = true,
      set_vim_settings = true,
      MiniStatuslineModeNormal = { bg = "#0a0a0a" },
      StatusLine = { bg = "#0a0a0a" },
      MiniStatuslineModeCommand = { bg = "#1c1f20" },
      MiniStatuslineModeInsert = { bg = "#1c1f20" },
      MiniStatuslineModeOther = { bg = "#1c1f20" },
      MiniStatuslineModeReplace = { bg = "#1c1f20" },
      MiniStatuslineModeVisual = { bg = "#1c1f20" },
      StatusLineTerm = { bg = "#1c1f20" },
    })
    -- MiniStatusline.StatusLineNC              = { fg = c.comment, bg = c.bg }
    -- MiniStatusline.StatusLineTermNC          = { fg = c.comment, bg = c.bg }
    -- MiniStatusline.Terminal                  = { fg = c.fg, bg = conf.transparent and "none" or c.bg },
    ---@diagnostic disable-next-line
    statusline.section_location = function()
      return "%l:%-v"
    end
  end,
}
