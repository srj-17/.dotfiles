return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("mason").setup()
			local mason_tool_installer = require("mason-tool-installer")
			-- especially for linters and formatters
			mason_tool_installer.setup({
				ensure_installed = {
					"prettier", -- prettier formatter
					"stylua", -- lua formatter
					-- "isort", -- python formatter
					-- "black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
					"lua_ls",
					"clangd",
					"markdown_oxide",
					"ts_ls",
					"cssls",
					"tailwindcss",
					"phpactor",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"mason.nvim",
			-- this is for broadcasting to the lsp about our
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
				-- this setup will read all data from mason and
				-- pull the list of all installed servers
				-- will pass items on that list to handlers who will setup the servers
				-- one by one
				handlers = {
					function(server_name)
						local capabilities = require("cmp_nvim_lsp").default_capabilities()
						require("lspconfig")[server_name].setup({
							-- Also, setup up completion configuration provided by cmp-nvim-lsp for each server
							capabilities = capabilities,

							-- this is for go to definition setup
							on_attach = function(client, bufnr)
								local opts = { buffer = bufnr, remap = false }
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
						})
					end,
				},
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
		end,
	},
}
