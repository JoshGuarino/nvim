return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				css = { "prettier" },
				html = { "prettier" },
				typescript = { "prettier" },
				javascript = { "prettier" },
				json = { "prettier" },
				markdown = { "prettier" },
				rust = { "rustfmt" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		},
	},
}
