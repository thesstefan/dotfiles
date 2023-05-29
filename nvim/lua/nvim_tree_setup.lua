require("nvim-tree").setup()

vim.cmd[[nnoremap <C-n> :NvimTreeToggle<CR>]]
vim.cmd[[set termguicolors]]
vim.cmd[[highlight NvimTreeFolderIcon guifg=orange]]
