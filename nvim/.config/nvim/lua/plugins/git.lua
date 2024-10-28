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
        end
    },
    -- {
        -- -- neogit seems unintuitive, so, not yet
    --     "NeogitOrg/neogit",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",         -- required
    --         "sindrets/diffview.nvim",        -- optional - Diff integration
    --
    --         -- Only one of these is needed.
    --         "nvim-telescope/telescope.nvim", -- optional
    --         "ibhagwan/fzf-lua",              -- optional
    --         "echasnovski/mini.pick",         -- optional
    --     },
    --     config = function ()
    --         local neogit = require("neogit")
    --         vim.keymap.set("n", "<leader>gs", function() neogit.open({ kind = "floating" }) end, { silent = true, noremap = true })
    --     end
    -- },
}
