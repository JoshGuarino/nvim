return {
  "rmagatti/auto-session",
  lazy = false,
  keys = {
    { "<leader>ss", "<cmd>SessionSearch<cr>" },
    { "<leader>sw", "<cmd>SessionSave<cr>" },
    { "<leader>sl", "<cmd>SessionLoad<cr>" },
    { "<leader>sd", "<cmd>SessionDelete<cr>" },
    { "<leader>sr", "<cmd>SessionRename<cr>" },
    { "<leader>st", "<cmd>SessionToggleAutoSave<cr>" },
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
