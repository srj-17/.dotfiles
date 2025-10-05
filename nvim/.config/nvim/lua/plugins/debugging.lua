return {
	{ -- dap client
		"mfussenegger/nvim-dap",
		dependencies = {
			-- ui for nvim-dap
			{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
			-- inline virtual text for debugging
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			-- the actual dap setup
			vim.keymap.set("n", "<leader>db", function()
				dap.toggle_breakpoint()
			end)

			vim.keymap.set("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end)

			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end)

			vim.keymap.set("n", "<leader>dso", function()
				dap.step_over()
			end)

			vim.keymap.set("n", "<leader>dsi", function()
				dap.step_into()
			end)

			vim.keymap.set("n", "<leader>dso", function()
				dap.step_out()
			end)

			vim.keymap.set("n", "<leader>dt", function()
				require("dap").terminate()
			end)

			-- basic setup for dap ui
			dapui.setup()
			require("nvim-dap-virtual-text").setup()

			-- auto control dap-ui on dap events
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			-- dap.listeners.before.event_exited.dapui_config = function()
			-- 	dapui.close()
			-- end
		end,
	},
	-- installing dap servers
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		opts = {
			-- Auto-install debuggers listed below
			automatic_installation = true,
			-- Ensure these debuggers are installed (names from mason-registry)
			ensure_installed = {
				-- "python",
				-- "node2",
			},
			handlers = {}, -- Custom handlers per adapter (optional)
		},
	},
}
