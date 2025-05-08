local M = {
	"sphamba/smear-cursor.nvim",

	config = function()
		require("smear_cursor").setup({
			stiffness = 0.8,
			trailing_stiffness = 0.59,
			stiffness_insert_mode = 0.6,
			trailing_stiffness_insert_mode = 0.6,
			distance_stop_animating = 0.2,
		})
	end,
}

return M
