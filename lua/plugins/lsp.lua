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

			lspconfig.bashls.setup({ capabilites = capabilites })
			lspconfig.clangd.setup({ capabilites = capabilites })
			lspconfig.csharp_ls.setup({ capabilites = capabilites })
			lspconfig.glsl_analyzer.setup({ capabilites = capabilites })
			lspconfig.html.setup({ capabilites = capabilites })
			lspconfig.jedi_language_server.setup({ capabilites = capabilites })
			lspconfig.lua_ls.setup({ capabilites = capabilites })
			lspconfig.ts_ls.setup({ capabilites = capabilites })

			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}

return M
