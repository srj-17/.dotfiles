return {
    -- neotree for explaining stuff to people 
    -- useful in larger projects
   {
        "nvim-neo-tree/neo-tree.nvim",branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
            -- because oil.nvim breaks opening cursor under browser
            {
                "chrishrb/gx.nvim",
                keys = { 
                },
                cmd = { "Browse" },
                init = function ()
                    vim.g.netrw_nogx = 1 -- disable netrw gx
                end,
                dependencies = { "nvim-lua/plenary.nvim" },
                config = true, -- default settings
                submodules = false, -- not needed, submodules are required only for tests
            }
        },
        config = function ()
            vim.keymap.set("n", "gx", "<Cmd>Browse<Enter>", { desc = "Go to the link" })
            vim.keymap.set("n", "<leader>nt", ":NeoTree toggle<Enter>", { desc = "NeoTree toggle" })
        end
    },
    -- oil.nvim for navigation the oil way
    -- edit file tree like a buffer
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = {
            "echasnovski/mini.icons",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("oil").setup({})
            -- use g? when using oil to find what commands there are
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        end
    },
    -- {
    --     -- tabs for making it easier to know which tab I'm in
    --     'romgrk/barbar.nvim',
    --     dependencies = {
    --         'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    --         'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    --     },
    --     opts = {
    --         options =  {
    --             mode = "tabs",
    --             show_buffer_close_icons = false,
    --             show_close_icon = false,
    --         }
    --     },
    --     init = function() vim.g.barbar_auto_setup = true end,
    --     config = function()
    --         -- map.set('n', '<leader>j', '<Cmd>BufferGoto 1<CR>', opts)
    --         -- map.set('n', '<leader>k', '<Cmd>BufferGoto 2<CR>', opts)
    --         -- map.set('n', '<leader>l', '<Cmd>BufferGoto 3<CR>', opts)
    --         -- map.set('n', '<leader>;', '<Cmd>BufferGoto 4<CR>', opts)
    --         vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
    --     end,
    --     version = '^1.0.0', -- optional: only update when a new 1.x version is released
    -- },
}
