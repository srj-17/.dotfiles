return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- for lsp's
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			-- this is for broadcasting to the lsp about our
			"neovim/nvim-lspconfig",
			"saghen/blink.cmp",
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				-- automatic_enable = false,
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
	{
		-- for formatters and linters
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"mason-org/mason.nvim",
		},
		config = function()
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
}
