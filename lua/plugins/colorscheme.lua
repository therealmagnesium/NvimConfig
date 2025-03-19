local M = {
    {
        "folke/tokyonight.nvim",
        config = function() end,
    },
    {
        "catppuccin/nvim",
        config = function() end,
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
            vim.cmd("colorscheme gruvbox-material")
        end,
    },
    {
        "cseelus/vim-colors-lucid",
        config = function() end,
    },
    {
        "thesimonho/kanagawa-paper.nvim",
        config = function()
            --vim.cmd("colorscheme kanagawa-paper-ink")
        end,
    },
    {
        "rose-pine/neovim",
        config = function()
            --vim.cmd("colorscheme rose-pine")
        end,
    },
}

return M
