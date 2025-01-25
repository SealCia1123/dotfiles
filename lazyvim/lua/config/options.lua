local space = " "
local opt = vim.opt
local set = vim.opt_local

vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    set.number = false
    set.relativenumber = false
    set.scrolloff = 0
    vim.bo.filetype = "terminal"
  end,
})
opt.listchars:append({
  multispace = space,
  lead = space,
  trail = space,
  nbsp = space,
  tab = "  ",
})
opt.showtabline = 0
-- opt.statuscolumn = ""
opt.shortmess = "ltToOCF"
opt.cursorline = false
opt.inccommand = "split"
opt.smartcase = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }
opt.clipboard = "unnamedplus"
-- encode to utf-8
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
vim.o.encoding = "utf-8"

-- set tabsize to 4 spaces
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.termguicolors = true
vim.opt.relativenumber = true

-- disable inline error
vim.diagnostic.config({
  virtual_text = false,
})
