return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
    config = function()
        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_browser = "brave"
    end,
}
