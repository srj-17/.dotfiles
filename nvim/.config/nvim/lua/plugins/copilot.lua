return {
	{
		-- NOTE: to future self
		-- this (or copilot.nvim) is just for
		-- authentication, I use
		-- copilot chat most of the time, but if I
		-- decide to use it in the future, use
		-- in conjunction with blink with
		-- with blink-copilot
		"zbirenbaum/copilot.lua",
		opts = {
			panel = { enabled = false },
			suggestion = {
				enabled = false,
			},
		},
	},
	{
		{
			"CopilotC-Nvim/CopilotChat.nvim",
			dependencies = {
				{ "nvim-lua/plenary.nvim", branch = "master" },
				{ "zebirenbaum/copilot.lua" },
			},
			-- build = "make tiktoken",
			opts = {},
			-- i = ai
			config = function()
				local km = vim.keymap
				km.set("n", "<leader>it", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle CopilotChat" })
				km.set("n", "<leader>ir", "<cmd>CopilotChatReset<cr>", { desc = "Reset Chat" })
				km.set("n", "<leader>is", "<cmd>CopilotChatSave<cr>", { desc = "Save Chat" })
			end,
		},
	},
}
