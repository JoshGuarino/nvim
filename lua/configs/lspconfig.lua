-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- check if in deno project
local is_deno_project = function()
  local root = vim.fn.getcwd()
  local files = vim.fn.readdir(root)
  for _, file in ipairs(files) do
    if file == "deno.json" then
      return true
    end
  end
  return false
end

-- enable lsps with default configs
vim.lsp.enable { "html", "cssls", "gopls", "pyright", "svelte" }

-- use denols if in deno project else use ts_ls
if is_deno_project() then
  vim.lsp.enable "denols"
else
  vim.lsp.enable "ts_ls"
end

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
