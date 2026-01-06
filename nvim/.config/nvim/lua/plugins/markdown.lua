-- return {
-- 	"OXY2DEV/markview.nvim",
-- 	lazy = false, -- Recommended
-- 	dependencies = {
-- 		"nvim-treesitter/nvim-treesitter",
-- 	},
-- 	config = function()
-- 		require("markview").setup({
-- 			preview = {
-- 				-- which modes to use markview on
-- 				modes = { "n", "no", "c" }, -- Change these modes
-- 				-- to what you need
--
-- 				hybrid_modes = { "n" }, -- Uses this feature on
-- 				-- normal mode
-- 			},
-- 		})
--
-- 		vim.cmd("Markview Enable")
-- 		vim.keymap.set("n", "<leader>me", "<cmd>Markview hybridToggle<CR>", { desc = "MarkDown Edit Toggle" })
-- 		vim.keymap.set("n", "<leader>ms", "<cmd>Markview splitToggle<CR>", { desc = "Markdown Split Toggle" })
-- 	end,
-- }

return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" }, -- if you use standalone mini plugins
	opts = {},
}
