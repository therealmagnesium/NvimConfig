local M = {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },

    config = function()
        require("noice").setup({
            lsp = {
                hover = {
                    enabled = true,
                },
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = false,
                lsp_doc_border = true,
            },
            routes = {
                {
                    view = "notify",
                    filter = { event = "msg_showmode" },
                },
            },
        })

        require("notify").setup({
            background_colour = "#00000000"
        })
    end,
}

return M
