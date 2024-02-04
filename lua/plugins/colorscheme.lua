local theme = "catppuccin"
local cursorLineColor = "#212361"
local columnColor = "none"

function ColorAll()
	vim.cmd("colorscheme " .. theme)

	vim.api.nvim_set_hl(0, "CursorLine", { bg = cursorLineColor })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = columnColor })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

local C = {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = false,
		})
		vim.cmd("colorscheme " .. theme)
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
		vim.g.material_style = "deep ocean"
		vim.cmd("colorscheme " .. theme)
	end,
}

return C
