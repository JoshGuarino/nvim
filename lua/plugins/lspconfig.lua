return {
	"neovim/nvim-lspconfig",
	dependencies = { "williamboman/mason.nvim" },
	config = function()
		-- enable lsps with default configs
		vim.lsp.enable({ "lua_ls", "html", "cssls", "gopls", "pyright", "ts_ls", "denols", "rust_analyzer", "elixirls" })

		-- lua_ls custom config
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		-- gopls custom config
		vim.lsp.config("gopls", {
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
			cmd = { "gopls" },
			settings = {
				gopls = {
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						unusedparams = true,
					},
				},
			},
		})
	end,
}
