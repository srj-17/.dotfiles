return {
	-- plugin to install parsers for treesitter
	-- nvim treesitter doesn't load all the modules,
	-- but it allows for its different modules to be loaded
	-- using require() in the config function (callback) below
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			-- this pulls in nvim-treesitter-textobjects module
			-- to the runtimepath
			-- "nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				-- A list of parser names
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

				-- ensures that if you enter a file whose parser has not been installed
				-- nvim-treesitter auto installs the parser for you
				auto_install = true,

				highlight = {
					enable = true,
				},

				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<leader>ss", -- start selection
						node_incremental = "<leader>si", -- increase selection
						scope_incremental = "<leader>sc", -- increase scope of selection
						node_decremental = "<leader>sd", -- decrease selection
					},
				},

				textobjects = {
					select = {
						enable = true,

						-- Automatically jump forward to textobj, similar to targets.vim
						lookahead = true,

						keymaps = {
							-- You can use the capture groups defined in textobjects.scm
							["af"] = "@function.outer", -- capture around function
							["if"] = "@function.inner", -- capture inside function
							["ac"] = "@class.outer", -- around class

							-- You can optionally set descriptions to the mappings (used in the desc parameter of
							-- nvim_buf_set_keymap) which plugins like which-key display
							["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },

							-- You can also use captures from other query groups like `locals.scm`
							["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
						},
						-- My documentation:
						-- selection modes basically asks which selection do you use when selecting the captured
						-- text block? ex: in a function block
						-- config = function ()
						-- something something
						-- end
						-- if you use daf with V, you'll delete all 3 lines
						-- if you use daf with v, you'll only delete the function () block and not config =
						selection_modes = {
							["@parameter.outer"] = "v", -- charwise
							["@function.outer"] = "V", -- linewise
							["@class.outer"] = "<c-v>", -- blockwise
						},
						-- If you set this to `true` (default is `false`) then any textobject is
						-- extended to include preceding or succeeding whitespace. Succeeding
						-- whitespace has priority in order to act similarly to eg the built-in
						-- `ap`.
						--
						-- Can also be a function which gets passed a table with the keys
						-- * query_string: eg '@function.inner'
						-- * selection_mode: eg 'v'
						-- and should return true or false
						include_surrounding_whitespace = true,
					},
				},
			})
		end,
	},
}
