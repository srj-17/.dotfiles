local ac = vim.api.nvim_create_autocmd

ac('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ timeout = 110 }) -- milliseconds
  end,
})

