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
}
