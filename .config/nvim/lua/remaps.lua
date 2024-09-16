-- set custom keybinds
--
--
-- set up leader key
-- Or, set up a global (g) variable called mapleader to space (" ")
-- g here is vim global (not to be confused with lua global)
vim.g.mapleader = " "

-- open the project view, well this is now handeled by oooiiill
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- configure vim to use ctrl backspace as well
vim.keymap.set("i", "<C-BS>", "<Esc>dbi", { silent = true, desc = 'delete from the cursor to back of the word'})

-- moving between vim splits
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "to the bottom split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "to the up split" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "to the left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "to the right split" })

vim.keymap.set("n", "<leader>x", ":bd<Enter>", { desc = "Buffer Delete"} )
-- cool things
-- ctrl z => move vim to background
-- fg <enter> to move it back to foreground after running commands
