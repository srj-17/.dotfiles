return {
    {
        -- theme kanagawa
        "rebelot/kanagawa.nvim",
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
            vim.cmd.colorscheme("tokyonight-moon")
            require("lualine").setup({
                options = { theme = "tokyonight-moon", }
             })
        end,
    },
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
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
    {
        "morhetz/gruvbox",
        config = function()
            -- vim.cmd.colorscheme("gruvbox");
            --
            -- require("lualine").setup({
                --     options = { theme = "tokyonight-moon", }
                --  })
        end
    },
}
