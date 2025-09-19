require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Toggle background transparency
map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", {
  noremap = true,
  silent = true,
  desc = "Toggle Background Transparency",
})

-- supermaven mappings
map("i", "<C-l>", "", { desc = "Supermaven Accept" })
map("i", "<C-x>", "", { desc = "Supermaven Clear" })
map("i", "<C-]>", "", { desc = "Supermaven Accept Word" })

-- vim-tmux-navigator mappings, overrides mvchad navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate Left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate Up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate Right" })
