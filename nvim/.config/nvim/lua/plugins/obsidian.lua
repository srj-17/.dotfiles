return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = false,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	config = function()
		require("obsidian").setup({
			ui = {
				enable = false,
			},

			workspaces = {
				{
					name = "notes",
					path = "~/Sync/notes",
				},
				-- {
				--   name = "work",
				--   path = "~/vaults/work",
				-- },
			},

			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "_dailyNotes",
				-- Optional, if you want to change the date format for the ID of daily notes.
				date_format = "%Y-%m-%d (%A)",
				-- Optional, if you want to change the date format of the default alias of daily notes.
				-- alias_format = "%B %-d, %Y",
				-- Optional, default tags to add to each new daily note created.
				default_tags = { "daily-notes" },
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				template = "_dailyNote.md",
			},

			follow_url_func = function(url)
				-- Open the URL in the default web browser.
				-- vim.fn.jobstart({"open", url})  -- Mac OS
				vim.ui.open(url) -- need Neovim 0.10.0+
			end,

			-- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this
			-- way then set 'mappings = {}'.
			mappings = {
				-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
				-- -- Toggle check-boxes.
				["<leader>ch"] = {
					action = function()
						return require("obsidian").util.toggle_checkbox()
					end,
					opts = { buffer = true },
				},
			},

			-- Where to put new notes. Valid options are
			--  * "current_dir" - put new notes in same directory as the current buffer.
			--  * "notes_subdir" - put new notes in the default notes subdirectory.
			new_notes_location = "current_dir",

			templates = {
				folder = "_templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M",
				-- A map for custom variables, the key should be the variable and the value a function
				substitutions = {},
			},

			picker = {
				-- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
				name = "telescope.nvim",
				-- Optional, configure key mappings for the picker. These are the defaults.
				-- Not all pickers support all mappings.
			},
			attachments = {
				img_folder = "_assets", -- This is the default

				img_name_func = function()
					-- Prefix image names with timestamp.
					return string.format("%s-", os.time())
				end,

				img_text_func = function(client, path)
					path = client:vault_relative_path(path) or path
					return string.format("![%s](%s)", path.name, path)
				end,
			},
		})

		vim.keymap.set("n", "<leader>on", "<Cmd>ObsidianNew<Enter>", { desc = "Obsidan New Note" })
		vim.keymap.set("n", "<leader>ont", "<Cmd>ObsidianNewFromTemplate<Enter>", { desc = "Obsidan n from Template" })
		vim.keymap.set("n", "<leader>on", "<Cmd>ObsidianNew<Enter>", { desc = "Obsidan New Note" })
		vim.keymap.set(
			"n",
			"<leader>ot",
			"<Cmd>vsplit<Enter><Cmd>ObsidianToday<Enter>",
			{ desc = "Obsidan: Today's Daily Note" }
		)
		vim.keymap.set("n", "<leader>os", "<Cmd>ObsidianSearch<Enter>", { desc = "Obsidan: Search" })
		vim.keymap.set("n", "<leader>ol", "<Cmd>ObsidianLinks<Enter>", { desc = "Obsidan: Links" })
		vim.keymap.set("n", "<leader>obl", "<Cmd>ObsidianBacklinks<Enter>", { desc = "Obsidan: Backlinks" })
		vim.keymap.set("v", "<leader>oen", ":ObsidianExtractNote ", { desc = "Obsidian Extract Note" })

		-- for obsidian's ui
		vim.opt.conceallevel = 2
	end,
}
