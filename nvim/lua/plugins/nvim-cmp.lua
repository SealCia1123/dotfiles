return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "amarakon/nvim-cmp-fonts",
    {
      "onsails/lspkind-nvim",
      config = function()
        require("lspkind").init()
      end,
    },
  },
  config = function()
    -- local cmp_action = require("lsp-zero").cmp_action()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local fixed_width = 40
    local luasnip = require("luasnip")
    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
        end,
      },
      preselect = cmp.PreselectMode.Item,
      completion = { completeopt = "menu,menuone" },
      view = {
        docs = {
          auto_open = true,
        },
        entries = { name = "custom", selection_order = "near_cursor" },
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" },
        { name = "path" },
        { name = "buffer" },
        { name = "fonts" },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        expandable_indicator = false,
        fields = { "kind", "abbr", "menu" },
        format = lspkind.cmp_format({
          mode = "symbol", -- show only symbol annotations
          maxwidth = {
            -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            -- can also be a function to dynamically calculate max width such as
            -- menu = function() return math.floor(0.45 * vim.o.columns) end,
            menu = 20, -- leading text (labelDetails)
            abbr = 50, -- actual suggestion item
          },
          ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
          show_labelDetails = true, -- show labelDetails in menu. Disabled by default

          -- The function below will be called before any actual modifications from lspkind
          -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
          before = function(entry, vim_item)
            return vim_item
          end,
        }),
        -- format = function(entry, item)
        --     -- Define menu shorthand for different completion sources.
        --     local menu_icon = {
        --         nvim_lsp = "NLSP",
        --         nvim_lua = "NLUA",
        --         luasnip = "LSNP",
        --         buffer = "BUFF",
        --         path = "PATH",
        --     }
        --     -- Set the menu "icon" to the shorthand for each completion source.
        --     item.menu = menu_icon[entry.source.name]
        --
        --     -- Set the fixed width of the completion menu to 60 characters.
        --     -- fixed_width = 20
        --
        --     -- Set 'fixed_width' to false if not provided.
        --     fixed_width = fixed_width or false
        --
        --     -- Get the completion entry text shown in the completion window.
        --     local content = item.abbr
        --
        --     -- Set the fixed completion window width.
        --     if fixed_width then
        --         vim.o.pumwidth = fixed_width
        --     end
        --
        --     -- Get the width of the current window.
        --     local win_width = vim.api.nvim_win_get_width(0)
        --
        --     -- Set the max content width based on either: 'fixed_width'
        --     -- or a percentage of the window width, in this case 20%.
        --     -- We subtract 10 from 'fixed_width' to leave room for 'kind' fields.
        --     local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)
        --
        --     -- Truncate the completion entry text if it's longer than the
        --     -- max content width. We subtract 3 from the max content width
        --     -- to account for the "..." that will be appended to it.
        --     if #content > max_content_width then
        --         item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
        --     else
        --         item.abbr = content .. (" "):rep(max_content_width - #content)
        --     end
        --     return item
        -- end,
      },
      window = {
        completion = cmp.config.window.bordered({
          side_padding = 0,
          border = "none",
        }),
        documentation = {
          border = "none",
          max_width = 50,
          max_height = 60,
        },
      },
      mapping = cmp.mapping.preset.insert({
        -- ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        -- ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        ["<C-f>"] = function(fallback)
          if luasnip.jumpable(1) then
            luasnip.jump(1)
          else
            -- fallback()
          end
        end,
        ["<C-b>"] = function(fallback)
          if luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            -- fallback()
          end
        end,
        ["<C-k>"] = cmp.mapping.scroll_docs(-3),
        ["<C-j>"] = cmp.mapping.scroll_docs(3),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        --["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-g>"] = cmp.mapping.close_docs(),
        ["<C-]>"] = cmp.mapping.close(),
      }),
    })
  end,
}
