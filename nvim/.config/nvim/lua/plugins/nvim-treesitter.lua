return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {},
		config = function()
			require("nvim-treesitter").install({ "c", "lua", "vim", "vimdoc", "markdown", "markdown_inline" })
		end,
	},
}
