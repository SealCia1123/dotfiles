local space = " "
local opt = vim.opt
opt.listchars:append({
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
})
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
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.termguicolors = true
vim.opt.relativenumber = true

-- disable inline error
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
})
