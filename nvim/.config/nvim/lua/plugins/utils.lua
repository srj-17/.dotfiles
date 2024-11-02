return {
    {
        -- for more, see nvim-surround.usage help page
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        'Wansmer/treesj',
        opts = {
            use_default_keymaps = false,
            max_join_length = 150,
        },
        config = function()
            require("treesj").setup({})
            vim.keymap.set("n", "<leader>t", ":TSJToggle<CR>", { desc = "toggle " })
        end
    },
    {
        "mbbill/undotree",
        config = function ()
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end
    },
}
