return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	ft = "tex",
	init = function()
		-- VimTeX configuration goes here
		vim.g.vimtex_quickfix_mode = 0 -- don’t auto-open quickfix list
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_syntax_enabled = 1
	end,
}
