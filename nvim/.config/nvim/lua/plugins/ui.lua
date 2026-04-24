-- plugins related to ui
return {
	{
		-- just for oklch
		"eero-lehtinen/oklch-color-picker.nvim",
		event = "VeryLazy",
		version = "*",
		keys = {
			-- One handed keymap recommended, you will be using the mouse
			-- {
			-- 	"<leader>v",
			-- 	function()
			-- 		require("oklch-color-picker").pick_under_cursor()
			-- 	end,
			-- 	desc = "Color pick under cursor",
			-- },
		},
		---@type oklch.Opts
		opts = {},
	},
	{
		-- this plugin just makes fold more good looking
		-- fold works as normal with zc, zC, zo, zO, za and zA
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		config = function()
			require("ufo").setup()
			-- foldlevel specifies maximum fold level that will be automatically opened,
			-- so its opening everything by default when opening the document
			-- `zm` increases fold level and `zr` decreases it, if y'r curious
			--
			-- this option means that folds above the level 5 are not opened at all
			vim.opt.foldlevel = 999
		end,
	},
	{
		-- lualine for making the status line look better
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					-- use global status line
					globalstatus = true,
					theme = "auto",
				},
			})
		end,
	},
	{
		-- this is for showing code context
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter" },
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section
		},
	},
	{
		-- this is for the lines that show indentation
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({
				exclude = {
					filetypes = { "dashboard" },
				},
			})
		end,
		-- Or this, for animated indentation (i don't quite like it)
		-- 'echasnovski/mini.nvim',
		-- version = '*',
		-- config = function()
		--     require('mini.indentscope').setup()
		-- end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
