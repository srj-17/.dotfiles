return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "debugloop/telescope-undo.nvim",
        "folke/todo-comments.nvim",
    },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc="find files" })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc="find by grep" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc="find in buffers" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc="find help" })
        vim.keymap.set('n', '<leader>ft', "<Cmd>TodoTelescope<Cr>", { desc="find todos" } )

        require("telescope").load_extension("undo")
        vim.keymap.set('n', '<leader>fu', "<cmd>Telescope undo<cr>")
    end
}
