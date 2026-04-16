return {
    {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
        opts = {
             colors = {
            
            bg = "#0a101f",
            dark_bg = "#0a0e17",
            darker_bg = "#090c11",
            lighter_bg = "#4e4e4e",
            
            
            fg = "#ffffff",
            dark_fg = "#C7D3E0",
            light_fg   = "#afbbab",
            bright_fg  = "#eaede9",
            muted      = "#9099a5",
 
            red = "#918151", -- Variables, errors, red
            orange = "#e2687c", -- Integers, constants, orange
            yellow = "#e5af1b", -- Classes, types, yellow
            green = "#5C637A", -- Strings, green
            cyan = "#F5ECDF", -- Support, regex, cyan
            blue = "#C24F40", -- Functions, keywords, blue
            purple = "#ff6bf5", -- Keywords, storage, magenta
            brown = "#6B72A8", -- Deprecated, brown/yellow
 
        bright_red    = "#e21d63",
        bright_yellow = "#f5ecd2",
        bright_green  = "#787e93",
        bright_cyan   = "#DC9B68",
        bright_blue   = "#9099a5",
        bright_purple = "#f9cbf6",

        accent               = "#9099a5",
        cursor               = "#ffffff",
        foreground           = "#ffffff",
        background           = "#0a101f",
        selection            = "#28302b",
        selection_foreground = "#ffffff",
        selection_background = "#28302b",
 
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
