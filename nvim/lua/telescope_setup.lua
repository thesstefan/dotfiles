require 'telescope'.setup {}

vim.api.nvim_set_keymap("n", "ff", "<cmd>Telescope find_files<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>",
  {silent = true, noremap = true}
)
