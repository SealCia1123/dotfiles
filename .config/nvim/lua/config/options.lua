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

vim.opt.listchars:append({
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
    tab = "  ",
})

opt.showtabline = 0
opt.statuscolumn = ""
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

-- Disable blink cursor
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:ver25-blinkon0-blinkoff0-TermCursor"
-- Completion window transparency
opt.pumblend = 0

-- highlight things
local fg = "#cdcdcd"
local bg = "#1c1f20"
local background = "#050505"
local comment = "#606079"
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "LspReferenceRead", {})
        vim.api.nvim_set_hl(0, "LspReferenceWrite", {})
        vim.api.nvim_set_hl(0, "LspReferenceText", {})
        vim.api.nvim_set_hl(0, "MiniStatuslineModeCommand", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "MiniStatuslineModeOther", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "MiniStatuslineModeReplace", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { fg = fg, bg = background })
        vim.api.nvim_set_hl(0, "StatusLine", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineTerm", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineNC", { fg = comment, bg = "none" })
        vim.api.nvim_set_hl(0, "StatusLineTermNC", { fg = comment, bg = "none" })
        vim.api.nvim_set_hl(0, "Terminal", { fg = fg, bg = bg or "none" })
        vim.api.nvim_set_hl(0, "ElInsert", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommand", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommandCV", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommandEx", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElConfirm", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElInsertCompletion", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElMore", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElNormal", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElNormalOperatorPending", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElPrompt", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElReplace", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElSBlock", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElSelect", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElShell", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElSLine", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElTerm", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElVirtualReplace", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElVisualBlock", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElVisualLine", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElVisual", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommandInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommandCVInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElCommandExInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElConfirmInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElInsertCompletionInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElInsertInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElMoreInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "ElNormalInactive", { fg = fg, bg = "none" })
        vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#606079" })
        vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#393B42" })
        vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#252530" })
        vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpKind", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", { bg = "#0e0e0e" })
        vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpDocSeparator", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpLabelDescription", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpLabelDetail", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "BlinkCmpSource", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#141415" })
        vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = "#141415" })
    end,
})

-- set 80 characters column
opt.colorcolumn = "80"
opt.cmdheight = 1
opt.wildignorecase = true
