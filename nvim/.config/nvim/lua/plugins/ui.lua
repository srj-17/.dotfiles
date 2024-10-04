-- plugins related to ui 
return {
    -- noice for making notifications, messages, commandline prettier
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            {
                "rcarriga/nvim-notify",
                opts = {
                    timeout = 10000,
                },
            },
        },
        config = function()
            require("noice").setup({
                lsp = {
                    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
                    },
                },
                -- you can enable a preset for easier configuration
                presets = {
                    bottom_search = true, -- use a classic bottom cmdline for search
                    command_palette = true, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = true, -- add a border to hover docs and signature help
                },
            })
        end
    },
    {
        -- for highlighting css colors
        -- mini.highlight worked, but it was not working for anything except hex color
        'brenoprata10/nvim-highlight-colors',
        config = function ()
            -- Ensure termguicolors is enabled if not already
            vim.opt.termguicolors = true

            require('nvim-highlight-colors').setup({})

            require("cmp").setup({
                -- ... other configs
                formatting = {
                    format = function(entry, item)
                        -- item = -- YOUR other configs come first
                        return require("nvim-highlight-colors").format(entry, item)
                    end
                }
            })
        end
    },
    {
        -- this plugin just makes fold more good looking
        -- fold works as normal with zc, zC, zo, zO, za and zA
        "kevinhwang91/nvim-ufo",
        dependencies="kevinhwang91/promise-async",
        config = function ()
            require("ufo").setup()
            -- foldlevel specifies maximum fold level that will be automatically opened, 
            -- so its opening everything by default when opening the document
            -- `zm` increases fold level and `zr` decreases it, if y'r curious
            --
            -- this option means that folds above the level 5 are not opened at all
            vim.opt.foldlevel = 9
        end
    },
    {
        -- lualine for making the status line look better
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            require('lualine').setup({
                options = { theme = 'gruvbox' }
            })
        end
    },
    {
        -- this is for showing code context 
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter" }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        config = function ()
            -- require("ibl").setup({})
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "folke/zen-mode.nvim",
        config = function()
            vim.keymap.set("n", "<leader>zz", function()
                require("zen-mode").setup {
                    window = {
                        width = 90,
                        options = { }
                    },
                }
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = true
                vim.wo.rnu = true
            end)


            vim.keymap.set("n", "<leader>zZ", function()
                require("zen-mode").setup {
                    window = {
                        width = 80,
                        options = { }
                    },
                }
                require("zen-mode").toggle()
                vim.wo.wrap = false
                vim.wo.number = false
                vim.wo.rnu = false
                vim.opt.colorcolumn = "0"
            end)
        end
    },
}
