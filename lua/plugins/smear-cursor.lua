local M = {
    "sphamba/smear-cursor.nvim",

    config = function()
        require("smear_cursor").setup({
            stiffness = 0.8,
            trailing_stiffness = 0.49,
            --stiffness_insert_mode = 0.8,
            --trailing_stiffness_insert_mode = 0.49,
            distance_stop_animating = 0.1,
        })
    end,
}

return M
