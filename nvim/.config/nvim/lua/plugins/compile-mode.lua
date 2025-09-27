return {
	"ej-shafran/compile-mode.nvim",
	version = "^5.0.0",
	-- you can just use the latest version:
	-- branch = "latest",
	-- or the most up-to-date updates:
	-- branch = "nightly",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- if you want to enable coloring of ANSI escape codes in
		-- compilation output, add:
		{ "m00qek/baleia.nvim", tag = "v1.3.0" },
	},
	config = function()
		---@type CompileModeOpts
		vim.g.compile_mode = {
			-- to add ANSI escape code support, add:
			baleia_setup = true,

			-- to make `:Compile` replace special characters (e.g. `%`) in
			-- the command (and behave more like `:!`), add:
			bang_expansion = true,
		}

		vim.keymap.set("n", "<leader>cs", "<cmd>Compile<CR>", { desc = "Compile setup" })
		vim.keymap.set("n", "<leader>cc", "<cmd>Recompile<CR><C-j>", { desc = "Re Compile" })
	end,
}
