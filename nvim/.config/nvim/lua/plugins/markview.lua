return {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    config = function() 
        require("markview").setup({

            -- which modes to use markview on
            modes = { "n", "no", "c" }, -- Change these modes
            -- to what you need

            hybrid_modes = { "n" },     -- Uses this feature on
            -- normal mode
            })

            -- vim.cmd("Markview enableAll");
            vim.keymap.set("n", "<leader>me", ":Markview hybridToggle<CR>", { desc = "MarkDown Edit Toggle"})
            vim.keymap.set("n", "<leader>ms", "<cmd>Markview splitToggle<CR>", { desc = "Markdown Split Toggle" })
    end,
}
