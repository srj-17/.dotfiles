return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
        --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
        --   -- refer to `:h file-pattern` for more examples
        --   "BufReadPre path/to/my-vault/*.md",
        --   "BufNewFile path/to/my-vault/*.md",
        -- },
        dependencies = {
            -- Required.
            "nvim-lua/plenary.nvim",
            -- optional
            "nvim-cmp",
        },
        opts = {
        },
        config = function ()
            require("obsidian").setup({
                workspaces = {
                    {
                        name = "notes",
                        path = "~/Sync/notes",
                    },
                    -- {
                        --   name = "work",
                        --   path = "~/vaults/work",
                        -- },
                    },

                    daily_notes = {
                        -- Optional, if you keep daily notes in a separate directory.
                        folder = "_dailyNotes",
                        -- Optional, if you want to change the date format for the ID of daily notes.
                        date_format = "%Y-%m-%d (%A)",
                        -- Optional, if you want to change the date format of the default alias of daily notes.
                        -- alias_format = "%B %-d, %Y",
                        -- Optional, default tags to add to each new daily note created.
                        default_tags = { "daily-notes" },
                        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
                        template = "_dailyNote.md"
                    },

                    follow_url_func = function(url)
                        -- Open the URL in the default web browser.
                        -- vim.fn.jobstart({"open", url})  -- Mac OS
                        vim.ui.open(url) -- need Neovim 0.10.0+
                    end,

                    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
                    completion = {
                        -- Set to false to disable completion.
                        nvim_cmp = true,
                        -- Trigger completion at 2 chars.
                        min_chars = 2,
                    },

                    -- Optional, configure key mappings. These are the defaults. If you don't want to set any keymappings this
                    -- way then set 'mappings = {}'.
                    mappings = {
                        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
                        ["gf"] = {
                            action = function()
                                return require("obsidian").util.gf_passthrough()
                            end,
                            opts = { noremap = false, expr = true, buffer = true },
                        },
                        -- Toggle check-boxes.
                        ["<leader>ch"] = {
                            action = function()
                                return require("obsidian").util.toggle_checkbox()
                            end,
                            opts = { buffer = true },
                        },
                        -- Smart action depending on context, either follow link or toggle checkbox.
                        ["<cr>"] = {
                            action = function()
                                return require("obsidian").util.smart_action()
                            end,
                            opts = { buffer = true, expr = true },
                        }
                    },

                    -- Where to put new notes. Valid options are
                    --  * "current_dir" - put new notes in same directory as the current buffer.
                    --  * "notes_subdir" - put new notes in the default notes subdirectory.
                    new_notes_location = "current_dir",

                    templates = {
                        folder = "_templates",
                        date_format = "%Y-%m-%d",
                        time_format = "%H:%M",
                        -- A map for custom variables, the key should be the variable and the value a function
                        substitutions = {},
                    },

                    picker = {
                        -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
                        name = "telescope.nvim",
                        -- Optional, configure key mappings for the picker. These are the defaults.
                        -- Not all pickers support all mappings.
                   },
                    attachments = {
                       img_folder = "_assets",  -- This is the default

                       img_name_func = function()
                           -- Prefix image names with timestamp.
                           return string.format("%s-", os.time())
                       end,

                       img_text_func = function(client, path)
                            path = client:vault_relative_path(path) or path
                            return string.format("![%s](%s)", path.name, path)
                        end,
                    },
                })

                vim.keymap.set("n", "<leader>on", "<Cmd>ObsidianNew<Enter>", { desc = "Obsidan New Note"} )
                vim.keymap.set("n", "<leader>ont", "<Cmd>ObsidianNewFromTemplate<Enter>", { desc = "Obsidan n from Template"} )
                vim.keymap.set("n", "<leader>on", "<Cmd>ObsidianNew<Enter>", { desc = "Obsidan New Note"} )
                vim.keymap.set("n", "<leader>ot", "<Cmd>ObsidianToday<Enter>", { desc = "Obsidan: Today's Daily Note"} )

                vim.opt.conceallevel = 2
            end
        }
