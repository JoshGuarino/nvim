-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "pyright", "svelte", "ts_ls" }

local ts_on_attach = function(client, bufnr) end

-- lsps with default config
vim.lsp.enable(servers)

-- denols custom config
vim.lsp.config("denols", {
  root_markers = { "deno.json" },
  on_attach = ts_on_attach,
})

-- ts_ls custom config
vim.lsp.config("ts_ls", {
  root_markers = { "package.json" },
  single_file_support = false,
  on_attach = ts_on_attach,
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
