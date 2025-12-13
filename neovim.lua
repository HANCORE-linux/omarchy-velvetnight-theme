return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#060b16", -- Default background
                base01 = "#626b78", -- Lighter background (status bars)
                base02 = "#060b16", -- Selection background
                base03 = "#626b78", -- Comments, invisibles
                base04 = "#e7eaef", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#e7eaef", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#811139", -- Variables, errors, red
                base09 = "#e21d63", -- Integers, constants, orange
                base0A = "#e5af1b", -- Classes, types, yellow
                base0B = "#353e4d", -- Strings, green
                base0C = "#b8b9bc", -- Support, regex, cyan
                base0D = "#9099a5", -- Functions, keywords, blue
                base0E = "#e2687c", -- Keywords, storage, magenta
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
