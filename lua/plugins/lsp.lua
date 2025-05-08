local M = {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            local cmp_lsp = require("cmp_nvim_lsp")
            local capabilites = cmp_lsp.default_capabilities()

            vim.lsp.enable("bashls")
            vim.lsp.enable("clangd")
            --vim.lsp.enable("eslint")
            vim.lsp.enable("glsl_analyzer")
            vim.lsp.enable("html")
            vim.lsp.enable("jedi_language_server")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ts_ls")

--[[
            lspconfig.bashls.setup({ capabilites = capabilites })
            lspconfig.clangd.setup({ capabilites = capabilites })
            lspconfig.csharp_ls.setup({ capabilites = capabilites })
            lspconfig.eslint.setup({ capabilites = capabilites })
            lspconfig.glsl_analyzer.setup({ capabilites = capabilites })
            lspconfig.html.setup({ capabilites = capabilites })
            lspconfig.jedi_language_server.setup({ capabilites = capabilites })
            lspconfig.ts_ls.setup({ capabilites = capabilites }) --]]

            vim.lsp.config('lua_ls', {
                on_init = function(client)
                    if client.workspace_folders then
                        local path = client.workspace_folders[1].name
                        if
                            path ~= vim.fn.stdpath('config')
                            and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
                        then
                            return
                        end
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most
                            -- likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                            -- Tell the language server how to find Lua modules same way as Neovim
                            -- (see `:h lua-module-load`)
                            path = {
                                'lua/?.lua',
                                'lua/?/init.lua',
                            },
                        },

                        -- Make the server aware of Neovim runtime files
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME
                            }
                        }
                    })
                end,
                settings = {
                    Lua = {}
                }
            })

            --[[
            lspconfig.lua_ls.setup({
                capabilites = capabilites,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })--]]

            vim.keymap.set("n", "K", vim.lsp.buf.hover)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
        end,
    },
}

return M
