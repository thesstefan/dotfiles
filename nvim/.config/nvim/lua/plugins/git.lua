return {
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local gitsigns = require("gitsigns")

            gitsigns.setup({
                on_attach = function(bufnr)
                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- Navigation
                    map("n", "]c", function()
                        if vim.wo.diff then
                            vim.cmd.normal({ "]c", bang = true })
                        else
                            gitsigns.nav_hunk("next")
                        end
                    end, { desc = "Next Hunk" })

                    map("n", "[c", function()
                        if vim.wo.diff then
                            vim.cmd.normal({ "[c", bang = true })
                        else
                            gitsigns.nav_hunk("prev")
                        end
                    end, { desc = "Previous Hunk" })

                    -- Actions
                    map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
                    map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
                    map("v", "<leader>hs", function()
                        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                    end, { desc = "Stage Hunk" })
                    map("v", "<leader>hr", function()
                        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                    end, { desc = "Reset Hunk" })
                    map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage Buffer" })
                    map("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Undo Stage Hunk" })
                    map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset Buffer" })
                    map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
                    map("n", "<leader>hb", function()
                        gitsigns.blame_line({ full = true })
                    end, { desc = "Blame Line" })
                    map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle Blame Line" })
                    map("n", "<leader>hd", gitsigns.diffthis, { desc = "Diff This" })
                    map("n", "<leader>hD", function()
                        gitsigns.diffthis("~")
                    end, { desc = "Diff This ('~')" })
                    map("n", "<leader>td", gitsigns.toggle_deleted, { desc = "Toggle Deleted" })

                    -- Text object
                    map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Select Hunk" })
                end,
            })
        end,
    },
}
