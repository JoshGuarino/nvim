return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				css = { "prettierd" },
				html = { "prettierd" },
				typescript = { "prettierd" },
				javascript = { "prettierd" },
				json = { "prettierd" },
				markdown = { "prettierd" },
				rust = { "rustfmt" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
}
