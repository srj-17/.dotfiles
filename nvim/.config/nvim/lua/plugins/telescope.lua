return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
		"folke/todo-comments.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "find by grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find in buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "find help" })
		vim.keymap.set("n", "<leader>ft", "<Cmd>TodoTelescope<Cr>", { desc = "find todos" })
		vim.keymap.set("n", "<leader>fm", builtin.man_pages, { desc = "find man pages" })
		vim.keymap.set("n", "<leader>fl", builtin.builtin, { desc = "find list of telescope pickers" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "find diagnostics" })

		require("telescope").load_extension("undo")
		vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
	end,
}
