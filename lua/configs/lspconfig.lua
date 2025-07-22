-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "gopls", "pyright", "svelte", "ts_ls", "denols", "omnisharp" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- deno lsp custom config
lspconfig.denols.setup {
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}

-- ts_ls custom config
lspconfig.ts_ls.setup {
  root_dir = lspconfig.util.root_pattern "package.json",
  single_file_support = false,
}

-- gopls custom config
lspconfig.gopls.setup {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- omnisharp custom config
lspconfig.omnisharp.setup {
  cmd = { "OmniSharp", "--languageserver", "--hostPID", vim.fn.getpid() },
}
