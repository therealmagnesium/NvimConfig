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
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.hover.contentFormat = { "markdown", "plaintext" }
			capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }

			-- Patch open_floating_preview to fix clangd's hover rendering
			local orig_open_floating_preview = vim.lsp.util.open_floating_preview
			vim.lsp.util.open_floating_preview = function(contents, syntax, opts, ...)
				-- Strip backslash escaping clangd adds to underscores in markdown
				-- e.g. text\_size -> text_size, Utils\_MeasureText -> Utils_MeasureText
				for i, line in ipairs(contents) do
					contents[i] = line:gsub("\\([_*])", "%1")
				end
				local bufnr, winnr = orig_open_floating_preview(contents, syntax, opts, ...)
				if winnr and vim.api.nvim_win_is_valid(winnr) then
					-- conceallevel=2 as a fallback in case any \ escapes slip through
					vim.wo[winnr].conceallevel = 2
					vim.wo[winnr].concealcursor = "n"
				end
				return bufnr, winnr
			end

			vim.lsp.enable("bashls")

			vim.lsp.config("clangd", {
				capabilities = capabilities,
			})
			vim.lsp.enable("clangd")

			--vim.lsp.enable("eslint")

			vim.lsp.config["glsld"] = {
				cmd = { "glsld" },
				filetypes = { "glsl", "vert", "tesc", "tese", "geom", "frag", "comp" },
				root_markers = { ".git", "compile_commands.json" },
			}

			vim.lsp.enable("glsld")

			vim.lsp.enable("html")
			vim.lsp.enable("jedi_language_server")

			vim.lsp.config("lua_ls", {
				on_init = function(client)
					if client.workspace_folders then
						local path = client.workspace_folders[1].name
						if
							path ~= vim.fn.stdpath("config")
							and (vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc"))
						then
							return
						end
					end

					client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
						runtime = {
							version = "LuaJIT",
							path = {
								"../init.lua",
							},
						},

						-- Make the server aware of Neovim runtime files
						workspace = {
							checkThirdParty = false,
							library = {
								vim.env.VIMRUNTIME,
							},
						},
					})
				end,
				settings = {
					Lua = {},
				},
			})
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

			local pretty = require("pretty_hover")
			vim.keymap.set("n", "K", pretty.hover)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}

return M
