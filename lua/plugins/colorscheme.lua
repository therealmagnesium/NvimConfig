local theme = "everforest"

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

local E = {
    "sainnhe/everforest",

    config = function()
        vim.g.everforest_transparent_background = true

        vim.cmd("colorscheme " .. theme)
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
}

local G = {
    "sainnhe/gruvbox-material",

    config = function()
        vim.g.gruvbox_material_transparent_background = true

        vim.cmd("colorscheme " .. theme)
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
}

local K = {
    "rebelot/kanagawa.nvim",

    config = function()
        require("kanagawa").setup({
            transparent = true,
        })
        vim.cmd("colorscheme " .. theme)
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end,
}

local R = {
    "rose-pine/neovim",
    name = "rose-pine",

    config = function()
        require("rose-pine").setup({
            variant = "main",

            styles = {
                transparency = true,
            },
        })

        vim.cmd("colorscheme " .. theme)
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
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

return E
