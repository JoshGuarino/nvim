return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true,
				theme = "catppuccin",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
		})
	end,
}
