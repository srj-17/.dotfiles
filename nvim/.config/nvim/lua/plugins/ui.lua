-- plugins related to ui
return {
	-- noice for making notifications, messages, commandline prettier
	-- {
	--     "folke/noice.nvim",
	--     event = "VeryLazy",
	--     opts = {
	--         -- add any options here
	--     },
	--     dependencies = {
	--         -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	--         "MunifTanjim/nui.nvim",
	--         -- OPTIONAL:
	--         --   `nvim-notify` is only needed, if you want to use the notification view.
	--         --   If not available, we use `mini` as the fallback
	--         {
	--             "rcarriga/nvim-notify",
	--             opts = {
	--                 timeout = 10000,
	--                 -- this disables notify messages for anything other than errors
	--                 -- render = "minimal",
	--                 -- on_open = function (win)
	--                 --     vim.api.nvim_win_set_config(win, { focuseable = false })
	--                 -- end
	--             },
	--         },
	--     },
	--     config = function()
	--         require("noice").setup({
	--             lsp = {
	--                 -- progress = { enabled = false },
	--                 -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
	--                 override = {
	--                     ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	--                     ["vim.lsp.util.stylize_markdown"] = true,
	--                     ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
	--                 },
	--             },
	--             -- you can enable a preset for easier configuration
	--             presets = {
	--                 bottom_search = true, -- use a classic bottom cmdline for search
	--                 command_palette = true, -- position the cmdline and popupmenu together
	--                 long_message_to_split = true, -- long messages will be sent to a split
	--                 inc_rename = false, -- enables an input dialog for inc-rename.nvim
	--                 lsp_doc_border = true, -- add a border to hover docs and signature help
	--             },
	--
	--             -- this changes the cmdline view from center of screen to traditional
	--             -- cmdline = {
	--             --     view = "cmdline",
	--             -- },
	--
	--             -- remove no information available messages
	--             routes = {
	--                 {
	--                     filter = {
	--                         event = "notify",
	--                         find = {
	--                             "No information available",
	--                         },
	--                     },
	--                     opts = {
	--                         skip = true,
	--                     },
	--                 },
	--             },
	--         })
	--     end
	-- },
	-- {
	-- 	-- for highlighting css colors
	-- 	-- mini.highlight worked, but it was not working for anything except hex color
	-- 	"brenoprata10/nvim-highlight-colors",
	-- 	config = function()
	-- 		-- Ensure termguicolors is enabled if not already
	-- 		vim.opt.termguicolors = true
	--
	-- 		require("nvim-highlight-colors").setup({})
	--
	-- 		-- blink integration - copied directly from the nvim-highlight-colors docs
	-- 		require("blink.cmp").setup({
	-- 			completion = {
	-- 				menu = {
	-- 					draw = {
	-- 						components = {
	-- 							-- customize the drawing of kind icons
	-- 							kind_icon = {
	-- 								text = function(ctx)
	-- 									-- default kind icon
	-- 									local icon = ctx.kind_icon
	-- 									-- if LSP source, check for color derived from documentation
	-- 									if ctx.item.source_name == "LSP" then
	-- 										local color_item = require("nvim-highlight-colors").format(
	-- 											ctx.item.documentation,
	-- 											{ kind = ctx.kind }
	-- 										)
	-- 										if color_item and color_item.abbr ~= "" then
	-- 											icon = color_item.abbr
	-- 										end
	-- 									end
	-- 									return icon .. ctx.icon_gap
	-- 								end,
	-- 								highlight = function(ctx)
	-- 									-- default highlight group
	-- 									local highlight = "BlinkCmpKind" .. ctx.kind
	-- 									-- if LSP source, check for color derived from documentation
	-- 									if ctx.item.source_name == "LSP" then
	-- 										local color_item = require("nvim-highlight-colors").format(
	-- 											ctx.item.documentation,
	-- 											{ kind = ctx.kind }
	-- 										)
	-- 										if color_item and color_item.abbr_hl_group then
	-- 											highlight = color_item.abbr_hl_group
	-- 										end
	-- 									end
	-- 									return highlight
	-- 								end,
	-- 							},
	-- 						},
	-- 					},
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- },
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
	--     {
	--         "nvimdev/dashboard-nvim",
	--         event = "VimEnter",
	--         config = function()
	--             -- don't mess up the indentation, the dashboard picks it up
	--             local logo = [[
	--
	--
	-- ██████  ▄▄▄       █    ██   ▄████  ▄▄▄     ▄▄▄█████▓
	-- ▒██    ▒ ▒████▄     ██  ▓██▒ ██▒ ▀█▒▒████▄   ▓  ██▒ ▓▒
	-- ░ ▓██▄   ▒██  ▀█▄  ▓██  ▒██░▒██░▄▄▄░▒██  ▀█▄ ▒ ▓██░ ▒░
	-- ▒   ██▒░██▄▄▄▄██ ▓▓█  ░██░░▓█  ██▓░██▄▄▄▄██░ ▓██▓ ░
	-- ▒██████▒▒ ▓█   ▓██▒▒▒█████▓ ░▒▓███▀▒ ▓█   ▓██▒ ▒██▒ ░
	-- ▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░░▒▓▒ ▒ ▒  ░▒   ▒  ▒▒   ▓▒█░ ▒ ░░
	-- ░ ░▒  ░ ░  ▒   ▒▒ ░░░▒░ ░ ░   ░   ░   ▒   ▒▒ ░   ░
	-- ░  ░  ░    ░   ▒    ░░░ ░ ░ ░ ░   ░   ░   ▒    ░
	-- ░        ░  ░   ░           ░       ░  ░
	--
	--
	--         ]]
	--             -- logo = string.rep("\n", 8) .. logo .. "\n\n"
	--             require("dashboard").setup({
	--                 config = {
	--                     header = vim.split(logo, "\n")
	--                 }
	--             })
	--         end
	--     },
}
