return {
    {
        -- for lines, preview hunks
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
            vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<Enter>")
            vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<Enter>")
        end
    },
    {
        -- wrap git commands so that you can do those from neovim
        "tpope/vim-fugitive",
        config = function ()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

            -- handling diffs
            -- SAME thing as diffview, but works for only one buffer, so you should run this file upon file
            -- on all the files that have conflicts; but one less plugin
            -- BUT diffview does have the function to get all the buffers that have conflicts
            vim.keymap.set("n", "<leader>dv", "<cmd>Gvdiffsplit!<cr>", { desc = "open diff view" })
            vim.keymap.set("n", "gh", "<cmd>diffget //2<cr>", { desc = "diffget current branch (left)" })
            vim.keymap.set("n", "gl", "<cmd>diffget //3<cr>", { desc = "diffget other branch (right)" })
        end
    },
    -- {
    --     "sindrets/diffview.nvim",
    --     config = function ()
    --         -- vim.keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<cr>", { desc = "open diff view" })
    --         -- vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "close diff view" })
    --         --
    --         -- local actions = require("diffview.actions")
    --         -- vim.keymap.set("n", "gh", actions.diffget("ours") , { desc = "diffget current branch (left)" })
    --         -- vim.keymap.set("n", "gl", actions.diffget("theirs") , { desc = "diffget other branch (right)" })
    --         -- vim.keymap.set("n", "gb", actions.diffget("base") , { desc = "diffget base (center)" })
    --     end
    -- },        -- optional - Diff integration
    -- {
    --     -- neogit seems unintuitive, so, not yet
    --     "NeogitOrg/neogit",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",         -- required
    --         "sindrets/diffview.nvim",
    --
    --         -- Only one of these is needed.
    --         "nvim-telescope/telescope.nvim", -- optional
    --     },
    --     config = function ()
    --         local neogit = require("neogit")
    --         vim.keymap.set("n", "<leader>gs", function() neogit.open({ kind = "floating" }) end, { silent = true, noremap = true })
    --     end
    -- },
}
