local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"c",
				"cpp",
				"lua",
				"bash",
				"python",
				"javascript",
				"typescript",
				"glsl",
			},
			auto_install = true,
		})
	end,
}

return M
