return {
  "christoomey/vim-tmux-navigator",
  config = function ()
    vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<Cr>")
    vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<Cr>" )
    vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<Cr>")
    vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<Cr>")
  end,
}
