local M = {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({})
        end,
    },
    {
        "OmniSharp/omnisharp-vim",

        config = function() end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.bashls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            --lspconfig.csharp_ls.setup({ capabilities = capabilities })
            lspconfig.glsl_analyzer.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.jedi_language_server.setup({ capabilities = capabilities })

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            lspconfig.csharp_ls.setup({ capabilities = capabilities })
            lspconfig.tsserver.setup({ capabilities = capabilities })

            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
        end,
    },
}

return M
