local M = {
	applyTheme = function(theme)
		vim.cmd("colorscheme " .. theme)
	end,

	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		config = function()
			local cat = require("catppuccin")
			local args = {
				transparent_background = true,
				float = {
					transparent = true,
					solid = false,
				},
				term_colors = true,
				dim_inactive = {
					enabled = false,
					shade = "dark",
					percentage = 0.15,
				},
			}
			cat.setup(args)
		end,
	},
	{
		"marko-cerovac/material.nvim",
		config = function()
			vim.g.material_style = "deep ocean"
		end,
	},
	{
		"sainnhe/gruvbox-material",

		config = function()
			vim.g.gruvbox_material_transparent_background = true
			--vim.cmd("colorscheme gruvbox-material")
		end,
	},
	{
		"cseelus/vim-colors-lucid",
		config = function() end,
	},
	{
		"thesimonho/kanagawa-paper.nvim",
		dependencies = { "rebelot/kanagawa.nvim" },

		config = function()
			local kanagawa = require("kanagawa")
			local args = {
				transparent = true,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						NormalFloat = { bg = "none" },
						FloatBorder = { bg = "none" },
						FloatTitle = { bg = "none" },

						-- Save an hlgroup with dark background and dimmed foreground
						-- so that you can use it where your still want darker windows.
						-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
						NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

						-- Popular plugins that open floats will link to NormalFloat by default;
						-- set their background accordingly if you wish to keep them dark and borderless
						LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
						MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					}
				end,
			}
			kanagawa.setup(args)
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
				},
			})
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		config = function()
			local nordic = require("nordic")
			local args = {}
			args.transparent = { bg = true, float = true }
			args.swap_backgrounds = true
			args.on_highlight = function(highlights, palette)
				highlights.visual = { bg = palette.gray2, fg = "NONE" }
			end
			nordic.setup(args)
		end,
	},
}
return M
