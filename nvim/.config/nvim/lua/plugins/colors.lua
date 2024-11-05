return {
    {
        -- theme kanagawa
        "rebelot/kanagawa.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
        },
        lazy = false,
        config = function()
            -- set theme catppucchin each time nvim starts
            -- vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "nvim-lualine/lualine.nvim",
        },
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                transparent = false,
                styles = {
                    -- sidebars = "transparent",
                    -- floats = "transparent",
                    functions = {
                        italic = true,
                        bold = true,
                    },
                    keywords = {
                        bold = true,
                        italic = false,
                    },
                    variables = { },
                    comments = { },
                },
            })
            -- vim.cmd.colorscheme("tokyonight-night")
            require("lualine").setup({
                options = { theme = "auto" },
             })
        end,
    },
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
		end,
        config = function()
            -- vim.cmd.colorscheme("solarized-osaka")
        end
	},
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     lazy = false,
    --     dependencies = {
    --         "nvim-lualine/lualine.nvim",
    --     },
    --     priority = 1000,
    --     config = function()
    --         require("gruvbox").setup({
    --             transparent_mode = false,
    --             italic = {
    --                 functions = true,
    --                 keywords = false,
    --             },
    --         })
    --
    --         vim.o.background = "dark" -- dark for dark, and light for light mode
    --
    --         -- vim.cmd.colorscheme("gruvbox")
    --
    --         require("lualine").setup({
    --             options = { theme = "gruvbox" },
    --         })
    --     end,
    -- },
    {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1001,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_better_performance = 1
        vim.g.gruvbox_material_enable_bold = 1
        vim.g.gruvbox_material_enable_italic = 1
        vim.g.gruvbox_material_transparent_background = 1
        vim.g.gruvbox_material_dim_inactive_windows = 1

        vim.cmd.colorscheme("gruvbox-material")

        require("lualine").setup({
          options = {
            theme = "gruvbox-material"
          }
        })
      end
    }
}
