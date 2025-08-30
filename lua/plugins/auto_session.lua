return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    { "<leader>ss", "<cmd>AutoSession search<cr>", desc = "Session search" },
    { "<leader>sw", "<cmd>AutoSession save<cr>", desc = "Save session" },
    { "<leader>sd", "<cmd>AutoSession delete<cr>", desc = "Delete session" },
    { "<leader>st", "<cmd>AutoSession toggle<cr>", desc = "Toggle autosave" },
    { "<leader>sr", "<cmd>AutoSession restore<cr>", desc = "Restore session" },
    { "<leader>spo", "<cmd>AutoSession purgeOrphaned<cr>", desc = "Purge orphaned sessions" },
  },
  opts = {
    suppressed_dirs = { "~/", "~/repos/", "/" },
    session_lens = {
      picker_opts = {
        layout_strategy = "horizontal",
      },
    },
  },
}
