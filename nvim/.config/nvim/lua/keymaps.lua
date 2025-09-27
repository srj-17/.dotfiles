-- keymaps that don't have any place inside plugins go here
opts = { silent = true, noremap = true }
map = vim.keymap

map.set("n", "<leader>de", function()
	vim.diagnostic.open_float()
end, { silent = true, noremap = true, desc = "diagnostic message expand" })
