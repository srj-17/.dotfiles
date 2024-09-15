return {
    {
        -- for lines, preview hunks
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<Enter>")
            vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<Enter>")
        end
    },
    {
        -- wrap git commands so that you can do those from neovim
        "tpope/vim-fugitive",

    }
}
