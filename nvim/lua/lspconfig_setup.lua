local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['pylsp'].setup {
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                black = {
                    enabled = true,
                    line_length = 79,
                },
                isort = { enabled = true, profile = "black" },
            },
        },
    },
}

require('lspconfig')['lua_ls'].setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    }
}


local default_servers = { 'clangd', 'phpactor', 'angularls', 'jsonls', 'tsserver', 'cssls', 'texlab' }
for _, lsp in ipairs(default_servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities
    }
end

local signs = { Error = "✖", Warn = " ", Hint = "■", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]

vim.diagnostic.config({
    virtual_text = false,
    signs = true
})

vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
        local opts = {
            focusable = false,
            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
            border = 'rounded',
            source = 'always',
            prefix = ' ',
            scope = 'cursor',
        }
        vim.diagnostic.open_float(nil, opts)
    end
})

vim.api.nvim_set_keymap('n', '<C-M-l>', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true })
