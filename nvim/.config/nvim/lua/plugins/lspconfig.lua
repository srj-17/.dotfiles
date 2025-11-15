return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup({
				-- include registry for roslyn ls, for c#
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
			})
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
				automatic_enable = {
					-- we use typescript-tools.nvim instead of mason
					exclude = { "ts_ls" },
				},
				ensure_installed = {
					"ts_ls",
					-- "html",
					-- "cssls",
					-- "tailwindcss",
					"lua_ls",
					"texlab",
					-- make sure the mason registry for roslyn is added
					-- https://github.com/seblyng/roslyn.nvim
					-- "roslyn" -- c#
					-- "phpactor",
				},
			})

			-- use defaults
			-- grn = vim.lsp.buf.rename()
			-- grr = vim.lsp.buf.references()
			-- gri = vim.lsp.buf.implementation()
			-- gO = vim.lsp.buf.document_symbol()
			-- gra = vim.lsp.buf.code_action()

			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end)
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
					-- "prettier", -- prettier formatter
					"stylua", -- lua formatter
					-- "isort", -- python formatter
					"black", -- python formatter
					"pylint", -- python linter
					"eslint_d", -- js linter
				},
			})
		end,
	},
	{
		-- because the default ts_ls is slow
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {
			on_attach = function() end,
			handlers = {},
			settings = {
				-- spawn additional tsserver instance to calculate diagnostics on it
				separate_diagnostic_server = true,
				-- "change"|"insert_leave" determine when the client asks the server about diagnostic
				publish_diagnostic_on = "insert_leave",
				-- array of strings("fix_all"|"add_missing_imports"|"remove_unused"|
				-- "remove_unused_imports"|"organize_imports") -- or string "all"
				-- to include all supported code actions
				-- specify commands exposed as code_actions
				expose_as_code_action = {},
				-- string|nil - specify a custom path to `tsserver.js` file, if this is nil or file under path
				-- not exists then standard path resolution strategy is applied
				tsserver_path = nil,
				-- specify a list of plugins to load by tsserver, e.g., for support `styled-components`
				-- (see 💅 `styled-components` support section)
				tsserver_plugins = {},
				-- this value is passed to: https://nodejs.org/api/cli.html#--max-old-space-sizesize-in-megabytes
				-- memory limit in megabytes or "auto"(basically no limit)
				tsserver_max_memory = "auto",
				-- described below
				tsserver_format_options = {},
				tsserver_file_preferences = {},
				-- locale of all tsserver messages, supported locales you can find here:
				-- https://github.com/microsoft/TypeScript/blob/3c221fc086be52b19801f6e8d82596d04607ede6/src/compiler/utilitiesPublic.ts#L620
				tsserver_locale = "en",
				-- mirror of VSCode's `typescript.suggest.completeFunctionCalls`
				complete_function_calls = false,
				include_completions_with_insert_text = true,
				-- CodeLens
				-- WARNING: Experimental feature also in VSCode, because it might hit performance of server.
				-- possible values: ("off"|"all"|"implementations_only"|"references_only")
				code_lens = "off",
				-- by default code lenses are displayed on all referencable values and for some of you it can
				-- be too much this option reduce count of them by removing member references from lenses
				disable_member_code_lens = true,
				-- JSXCloseTag
				-- WARNING: it is disabled by default (maybe you configuration or distro already uses nvim-ts-autotag,
				-- that maybe have a conflict if enable this feature. )
				jsx_close_tag = {
					enable = true,
					filetypes = { "javascriptreact", "typescriptreact" },
				},
			},
		},
	},
}
