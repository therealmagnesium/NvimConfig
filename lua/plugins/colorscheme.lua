local theme = "catppuccin"

local C = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
		})
		vim.cmd("colorscheme " .. theme)
	end,
}

local K = {
	"rebelot/kanagawa.nvim",

	config = function()
		require("kanagawa").setup({
			transparent = false,
		})
		vim.cmd("colorscheme " .. theme)
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	end,
}

local R = {
	"rose-pine/neovim",
	name = "rose-pine",

	config = function()
		require("rose-pine").setup({
			variant = "main",
		})

		vim.cmd("colorscheme " .. theme)
	end,
}

local M = {
	"marko-cerovac/material.nvim",

	config = function()
		local material = require("material")

		material.setup({
			disable = {
				background = false,
			},
			custom_colors = function(colors)
				colors.syntax.type = colors.main.yellow
				colors.syntax.fn = colors.main.orange
				colors.syntax.value = colors.main.purple
			end,
		})

		vim.g.material_style = "deep ocean"
		vim.cmd("colorscheme " .. theme)
	end,
}

local N = {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nordic").load()
		vim.cmd("colorscheme " .. theme)
	end,
}

return C
