return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	-- ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	---@module 'obsidian'
	---@type obsidian.config
	opts = {},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "notes",
					path = "~/Sync/notes",
				},
			},

			new_notes_location = "current_dir",
			templates = {
				folder = "_templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M",
				-- A map for custom variables, the key
				-- should be the variable and the value a function
				substitutions = {
					yesterday = function()
						return os.date("%Y-%m-%d (%A)", os.time() - 86400)
					end,
				},
			},

			daily_notes = {
				folder = "_dailyNotes",
				date_format = "%Y-%m-%d (%A)",
				default_tags = { "daily-notes" },
				template = "_dailyNote.md",
			},

			attachments = {
				img_folder = "_assets", -- This is the default
			},

			legacy_commands = false,
		})

		-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
		vim.keymap.set("n", "gf", "<Cmd>Obsidian follow_link<Enter>", { desc = "Follow link" })
		vim.keymap.set("n", "<leader>on", "<Cmd>Obsidian new<Enter>", { desc = "Obsidan New Note" })
		vim.keymap.set(
			"n",
			"<leader>ont",
			"<Cmd>Obsidian new_from_template<Enter>",
			{ desc = "Obsidan n from Template" }
		)
		vim.keymap.set(
			"n",
			"<leader>ot",
			"<Cmd>vsplit<Enter><Cmd>Obsidian today<Enter>",
			{ desc = "Obsidan: Today's Daily Note" }
		)
		vim.keymap.set("n", "<leader>os", "<Cmd>Obsidian search<Enter>", { desc = "Obsidan: Search" })
		vim.keymap.set("n", "<leader>ol", "<Cmd>Obsidian links<Enter>", { desc = "Obsidan: Links" })
		vim.keymap.set("n", "<leader>obl", "<Cmd>Obsidian backlinks<Enter>", { desc = "Backlinks Obsidian" })
		vim.keymap.set("v", "<leader>oen", ":Obsidian extract_note ", { desc = "Obsidian Extract Note" })

		-- for obsidian's ui
		-- vim.opt.conceallevel = 2
	end,
}
