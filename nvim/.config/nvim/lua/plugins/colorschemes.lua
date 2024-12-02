return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = false,
            no_italic = true,
            no_bold = true,
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            integrations = {
                telescope = {
                    enabled = true,
                    style = "nvchad",
                },
                cmp = true,
                treesitter = true,
                which_key = true,
            },
        },
    },
}
