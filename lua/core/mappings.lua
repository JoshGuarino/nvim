local map = vim.keymap.set

-- command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- buffer navigation
map("n", "<C-h>", "<C-w>h", { desc = "switch buffer left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch buffer right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch buffer down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch buffer up" })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
	"n",
	"<leader>fa",
	"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
	{ desc = "telescope find all files" }
)

-- vim-tmux-navigator mappings, overrides buffer navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate Left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate Up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate Right" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- Bufferline
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "Next Tab" })
map("n", "<S-tab>", "<cmd>bprevious<CR>", { desc = "Previous Tab" })
map("n", "<leader>x", "<cmd>bnext | bdelete #<CR>", { desc = "Close Tab" })

-- Autosession
map("n", "<leader>ss", "<cmd>AutoSession search<cr>", { desc = "Session search" })
map("n", "<leader>sw", "<cmd>AutoSession save<cr>", { desc = "Save session" })
map("n", "<leader>sd", "<cmd>AutoSession delete<cr>", { desc = "Delete session" })
map("n", "<leader>st", "<cmd>AutoSession toggle<cr>", { desc = "Toggle autosave" })
map("n", "<leader>sr", "<cmd>AutoSession restore<cr>", { desc = "Restore session" })
map("n", "<leader>spo", "<cmd>AutoSession purgeOrphaned<cr>", { desc = "Purge orphaned sessions" })

-- Lsp Commands
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go to references" })
