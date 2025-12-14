return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#0a101f", -- Default background
                base01 = "#a88525", -- Lighter background (status bars)
                base02 = "#0a101f", -- Selection background
                base03 = "#a88525", -- Comments, invisibles
                base04 = "#e7eaef", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#e7eaef", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#918151", -- Variables, errors, red
                base09 = "#e2687c", -- Integers, constants, orange
                base0A = "#e5af1b", -- Classes, types, yellow
                base0B = "#1de2a0", -- Strings, green
                base0C = "#fffacd", -- Support, regex, cyan
                base0D = "#6bb6ff", -- Functions, keywords, blue
                base0E = "#ff6bf5", -- Keywords, storage, magenta
                base0F = "#f0d17c", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
