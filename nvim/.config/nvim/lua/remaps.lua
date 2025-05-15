-- set custom keybinds
--
--
-- set up leader key
-- Or, set up a global (g) variable called mapleader to space (" ")
-- g here is vim global (not to be confused with lua global)
vim.g.mapleader = " "

-- open the project view, well this is now handeled by oooiiill
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moving between vim splits
vim.keymap.set("n", "<C-j>", "<C-w><Up>", { desc = "to the bottom split" })
vim.keymap.set("n", "<C-k>", "<C-w><Down>", { desc = "to the up split" })
vim.keymap.set("n", "<C-h>", "<C-w><Left>", { desc = "to the left split" })
vim.keymap.set("n", "<C-l>", "<C-w><Right>", { desc = "to the right split" })

vim.keymap.set("n", "<leader>x", ":bd<Enter>", { desc = "Buffer Delete" })
-- cool things
-- ctrl z => move vim to background
-- fg <enter> to move it back to foreground after running commands

-- when in visual mode, they allow you to move things up and down using J and K,
-- AND, they'll respect indenting, copied from primeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- nohl, i use it very much
vim.keymap.set("n", "<C-n>", "<cmd>nohl<cr>", { desc = "nohl" })

-- make the current file executable
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<cr>", { desc = "Make current file executable" })

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
end)

vim.keymap.set("n", "vs", "<cmd>vsplit<cr>", { desc = "Split vertically" })
