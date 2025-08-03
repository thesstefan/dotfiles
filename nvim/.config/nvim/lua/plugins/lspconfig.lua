return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        -- used to enable autocompletion (assign to every lsp server config)
        local default = cmp_nvim_lsp.default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        local signs = { Error = "", Warn = "", Hint = "󰠠", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig["ruff"].setup({
            -- Disable linting in favor of Pyright.
            init_options = { settings = { lint = { enable = false } } },
        })

        lspconfig["taplo"].setup({})

        lspconfig["basedpyright"].setup({
            settings = {
                pyright = {
                    -- Using Ruff's import organizer
                    disableOrganizeImports = true,
                },
                python = {
                    analysis = {
                        -- Ignore all files for analysis to exclusively use Ruff
                        -- for linting
                        ignore = { "*" },
                    },
                },
            },
        })

        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
            capabilities = default,
            settings = {
                -- custom settings for lua
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })

        vim.filetype.add({
            extension = {
                jinja = "jinja",
                jinja2 = "jinja",
                j2 = "jinja",
            },
        })

        lspconfig["jinja_lsp"].setup({
            capabilities = default,
        })

        lspconfig["texlab"].setup({
            capabilities = default,
        })
    end,
}
