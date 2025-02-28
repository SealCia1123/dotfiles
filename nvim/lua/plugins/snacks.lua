return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    indent = {
      enabled = false,
    },
    ---@class snacks.scroll.Config
    scroll = {
      enabled = false,
      animate = {
        duration = { step = 15, total = 250 },
        easing = "outExpo",
        fps = 144,
      },
      -- what buffers to animate
      filter = function(buf)
        return vim.g.snacks_scroll ~= false and vim.b[buf].snacks_scroll ~= false
      end,
    },
    ---@class snacks.input.Config
    ---@field enabled? boolean
    ---@field win? snacks.win.Config
    ---@field icon? string
    input = {
      enabled = true,
      icon = " ",
      icon_hl = "SnacksInputIcon",
      win = { style = "input", relative = "editor" },
      expand = true,
    },
    bigfile = { enabled = true },
    ---@class snacks.terminal.Config
    ---@field win? snacks.win.Config
    ---@field override? fun(cmd?: string|string[], opts?: snacks.terminal.Opts) Use this to use a different terminal implementation
    terminal = {
      enabled = false,
      bo = {
        filetype = "snacks_terminal",
      },
      wo = {},
      keys = {
        q = "hide",
        gf = function(self)
          local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
          if f == "" then
            Snacks.notify.warn("No file under cursor")
          else
            self:hide()
            vim.schedule(function()
              vim.cmd("e " .. f)
            end)
          end
        end,
        term_normal = {
          "<esc>",
          function(self)
            self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
            if self.esc_timer:is_active() then
              self.esc_timer:stop()
              vim.cmd("stopinsert")
            else
              self.esc_timer:start(200, 0, function() end)
              return "<esc>"
            end
          end,
          mode = "t",
          expr = true,
          desc = "Double escape to normal mode",
        },
      },
    },
    dashboard = {
      enabled = false,
    },

    ---@class snacks.notifier.Config
    ---@field keep? fun(notif: snacks.notifier.Notif): boolean # global keep function
    notifier = {
      enabled = true,
      timeout = 2000, -- default timeout in ms
      width = { min = 30, max = 0.4 },
      height = { min = 1, max = 0.6 },
      -- editor margin to keep free. tabline and statusline are taken into account automatically
      margin = { top = 0, right = 0, bottom = 0 },
      padding = false, -- add 1 cell of left/right padding to the notification window
      sort = { "level", "added" }, -- sort by level and time
      -- minimum log level to display. TRACE is the lowest
      -- all notifications are stored in history
      level = vim.log.levels.TRACE,
      icons = {
        error = " ",
        warn = " ",
        info = " ",
        debug = " ",
        trace = " ",
      },
      keep = function(notif)
        return vim.fn.getcmdpos() > 0
      end,
      ---@type snacks.notifier.style
      style = "minimal",
      top_down = false, -- place notifications from top to bottom
      date_format = "%R", -- time format for notifications
      -- format for footer when more lines are available
      -- `%d` is replaced with the number of lines.
      -- only works for styles with a border
      ---@type string|boolean
      more_format = " ↓ %d lines ",
      refresh = 50, -- refresh at most every 50ms
    },
    quickfile = { enabled = true },
    statuscolumn = { enabled = false },
    words = { enabled = true },
    lazygit = { enabled = true },
    git = {
      enabled = true,
    },
  },
}
