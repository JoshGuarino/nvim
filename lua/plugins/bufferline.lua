return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					style = "none",
				},
				offsets = {
					{
						filetype = "NvimTree",
						separator = false,
						highlight = "NvimTreeNormal",
					},
				},
			},
		})
	end,
}
