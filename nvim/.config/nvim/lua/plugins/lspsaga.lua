return {
    "nvimdev/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({})
        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<leader>rn", ":Lspsaga rename<CR>")
        vim.keymap.set("n", "<leader>K", ":Lspsaga hover_doc<CR>")
        vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>")
        vim.keymap.set("n", "<leader>gr", ":Lspsaga finder tyd+ref+imp+def<CR>")
        vim.keymap.set("n", "<leader>gd", ":Lspsaga peek_definition<CR>", opts)
        vim.keymap.set("n", "<leader>D", ":Lspsaga show_line_diagnostics<CR>")
        vim.keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>")
    end,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
}
