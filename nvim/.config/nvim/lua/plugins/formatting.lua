return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
            toml = { "taplo" },
            sh = { "beautysh" },
            bash = { "beautysh" },
            zsh = { "beautysh" },
            markdown = { "prettierd" },
            json = { "prettierd" },
            jsonc = { "prettierd" },
            yaml = { "prettierd" },
            css = { "prettierd" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
