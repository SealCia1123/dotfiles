return {
    "dmtrKovalenko/fff.nvim",
    lazy = true,
    build = function()
        -- this will download prebuild binary or try to use existing rustup toolchain to build from source
        -- (if you are using lazy you can use gb for rebuilding a plugin if needed)
        require("fff.download").download_or_build_binary()
    end,
    -- if you are using nixos
    -- build = "nix run .#release",
    opts = { -- (optional)
        debug = {
            enabled = true, -- we expect your collaboration at least during the beta
            show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
        },
        --
        prompt = "🗣️ ",
        layout = {
            height = 0.8,
            width = 0.8,
            prompt_position = "top", -- or 'top'
            preview_position = "right", -- or 'left', 'right', 'top', 'bottom'
            preview_size = 0.6,
        },
    },
}
