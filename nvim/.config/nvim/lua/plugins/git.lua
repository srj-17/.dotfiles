return {
	{
		-- for lines, preview hunks
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
			vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<Enter>", { silent = true, noremap = true })
			vim.keymap.set(
				"n",
				"<leader>gb",
				"<cmd>Gitsigns toggle_current_line_blame<Enter>",
				{ silent = true, noremap = true }
			)
		end,
	},
	{
		-- wrap git commands so that you can do those from neovim
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { silent = true, noremap = true })

			-- handling diffs
			-- SAME thing as diffview, but works for only one buffer, so you should run this file upon file
			-- on all the files that have conflicts; but one less plugin
			-- BUT diffview does have the function to get all the buffers that have conflicts
			vim.keymap.set(
				"n",
				"<leader>dv",
				"<cmd>Gvdiffsplit!<cr>",
				{ silent = true, noremap = true, desc = "open diff view" }
			)
			vim.keymap.set(
				"n",
				"gh",
				"<cmd>diffget //2<cr>",
				{ silent = true, noremap = true, desc = "select left diff" }
			)
			vim.keymap.set(
				"n",
				"gl",
				"<cmd>diffget //3<cr>",
				{ silent = true, noremap = true, desc = "select right diff" }
			)
		end,
	},
}
