return {
	{
		"mason-org/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()

			-- especially for linters and formatters
			local mason_tool_installer = require("mason-tool-installer")
			mason_tool_installer.setup({
				ensure_installed = {
					"prettier", -- prettier formatter
					"stylua", -- lua formatter
					-- "isort", -- python formatter
					-- "black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			-- this is for broadcasting to the lsp about our
			"hrsh7th/cmp-nvim-lsp",
			"neovim/nvim-lspconfig",
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = {
					"ts_ls",
					"html",
					"cssls",
					"tailwindcss",
					-- "svelte",
					"lua_ls",
					-- "graphql",
					-- "emmet_ls",
					-- "prismals",
					-- "pyright",
					"phpactor",
				},
			})

			mason_lspconfig.setup_handlers({
				-- this setup will read all data from mason and
				-- pull the list of all installed servers
				-- will pass items on that list to handlers who will setup the servers
				-- one by one

				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						-- Also, setup up completion configuration provided by cmp-nvim-lsp for each server
						capabilities = capabilities,

						-- this is for go to definition setup
						on_attach = function(client, bufnr)
							local opts = { buffer = bufnr, remap = false }
						end,
					})
				end,

				-- necessary because idk why root directory was
				-- not being detected for phpactor during :checkhealth lspconfig
				-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/configs/phpactor.lua
				["phpactor"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.phpactor.setup({
						root_dir = vim.fn.getcwd(),
					})
				end,
			})

			local opts = { silent = true, noremap = true }
			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, opts)
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, opts)
			vim.keymap.set("n", "<leader>gr", function()
				vim.lsp.buf.references()
			end, opts)
			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action()
			end, opts)
			-- rename a variable throughout the whole project
			vim.keymap.set("n", "<leader>rn", function()
				vim.lsp.buf.rename()
			end, opts)
		end,
	},
}
