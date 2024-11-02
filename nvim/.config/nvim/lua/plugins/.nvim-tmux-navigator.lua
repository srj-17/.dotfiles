return {
  "christoomey/vim-tmux-navigator",
  config = function ()
    vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<Cr>", {noremap = true, })
    vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<Cr>" , {noremap = true, })
    vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<Cr>", {noremap = true, })
    vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<Cr>", {noremap = true, })
  end,
}
