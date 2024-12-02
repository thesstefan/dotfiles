return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function(_)
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        end,
    },
    {
        "mrjones2014/smart-splits.nvim",
        lazy = false,
        config = function(_, opts)
            require("smart-splits").setup(opts)
            vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
            vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
            vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
            vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
            vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
        end,
    },
}
