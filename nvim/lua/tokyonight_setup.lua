vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = { "terminal", "packer", "NvimTree", "Trouble" }
vim.g.tokyonight_lualine_bold = true

vim.g.tokyonight_colors = {
    bg_sidebar = '#101010',
}

vim.cmd [[colorscheme tokyonight-night]]
vim.cmd [[hi CursorLineNr guifg=orange]]
vim.cmd [[set cursorline]]
vim.cmd [[set cursorlineopt=number]]
